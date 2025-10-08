import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_todo_ai/models/task_model.dart';
import 'package:smart_todo_ai/services/ai_service.dart';
import 'package:smart_todo_ai/services/database_service.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final AIService _aiService;
  final DatabaseService _databaseService;

  TaskBloc({
    required AIService aiService,
    required DatabaseService databaseService,
  }) : _aiService = aiService,
       _databaseService = databaseService,
       super(const TaskState.initial()) {
    on<LoadTasks>(_onLoadTasks);
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
    on<ToggleTask>(_onToggleTask);
    on<ParseTasksFromAI>(_onParseTasksFromAI);
    on<ClearCompleted>(_onClearCompleted);
  }

  Future<void> _onLoadTasks(LoadTasks event, Emitter<TaskState> emit) async {
    try {
      emit(const TaskState.loading());
      final List<Task> tasks = await _databaseService.getAllTasks();
      final TaskState categorized = _categorizeTasks(tasks);
      emit(categorized);
    } catch (e) {
      emit(TaskState.error('Failed to load tasks: $e'));
    }
  }

  TaskState _categorizeTasks(List<Task> tasks) {
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);

    final List<Task> todayTasks = tasks.where((task) {
      if (task.dueDate == null) return false;
      final DateTime taskDate = DateTime(
        task.dueDate!.year,
        task.dueDate!.month,
        task.dueDate!.day,
      );
      return taskDate == today;
    }).toList();

    final List<Task> upcomingTasks = tasks.where((Task task) {
      return task.dueDate != null &&
          task.dueDate!.isAfter(now) &&
          !todayTasks.contains(task);
    }).toList();

    final List<Task> completedTasks = tasks
        .where((task) => task.isCompleted)
        .toList();

    return TaskState.loaded(
      tasks: tasks,
      todayTasks: todayTasks,
      upcomingTasks: upcomingTasks,
      completedTasks: completedTasks,
    );
  }

  Future<void> _onAddTask(AddTask event, Emitter<TaskState> emit) async {
    try {
      await _databaseService.insertTask(event.task);
      add(const LoadTasks());
    } catch (e) {
      emit(TaskState.error('Failed to add task: $e'));
    }
  }

  Future<void> _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) async {
    try {
      await _databaseService.updateTask(event.task);
      add(const LoadTasks());
    } catch (e) {
      emit(TaskState.error('Failed to update task: $e'));
    }
  }

  Future<void> _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) async {
    try {
      await _databaseService.deleteTask(event.taskId);
      add(const LoadTasks());
    } catch (e) {
      emit(TaskState.error('Failed to delete task: $e'));
    }
  }

  Future<void> _onToggleTask(ToggleTask event, Emitter<TaskState> emit) async {
    try {
      if (state is TaskLoaded) {
        final TaskLoaded currentState = state as TaskLoaded;
        final Task task = currentState.tasks.firstWhere(
          (t) => t.id == event.taskId,
          orElse: () => throw Exception('Task not found'),
        );

        final Task updatedTask = task.toggleCompletion();
        await _databaseService.toggleTaskCompletion(
          event.taskId,
          updatedTask.isCompleted,
        );
        add(const LoadTasks());
      }
    } catch (e) {
      emit(TaskState.error('Failed to toggle task: $e'));
    }
  }

  Future<void> _onParseTasksFromAI(
    ParseTasksFromAI event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.aiParsing());
      final List<Task> tasks = await _aiService.parseNaturalLanguage(
        event.input,
      );

      if (tasks.isEmpty) {
        emit(const TaskState.aiParsingError('No tasks could be extracted'));
        return;
      }

      for (final Task task in tasks) {
        await _databaseService.insertTask(task);
      }

      emit(TaskState.aiParsingSuccess(tasks));
      add(const LoadTasks());
    } catch (e) {
      emit(TaskState.aiParsingError('Failed to parse: $e'));
    }
  }

  Future<void> _onClearCompleted(
    ClearCompleted event,
    Emitter<TaskState> emit,
  ) async {
    try {
      await _databaseService.deleteCompletedTasks();
      add(const LoadTasks());
    } catch (e) {
      emit(TaskState.error('Failed to clear completed tasks: $e'));
    }
  }
}
