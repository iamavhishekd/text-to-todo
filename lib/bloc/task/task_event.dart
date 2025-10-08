part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTasks() = LoadTasks;
  const factory TaskEvent.addTask(Task task) = AddTask;
  const factory TaskEvent.updateTask(Task task) = UpdateTask;
  const factory TaskEvent.deleteTask(String taskId) = DeleteTask;
  const factory TaskEvent.toggleTask(String taskId) = ToggleTask;
  const factory TaskEvent.parseTasksFromAI(String input) = ParseTasksFromAI;
  const factory TaskEvent.clearCompleted() = ClearCompleted;
  const factory TaskEvent.filterByCategory(String category) = FilterByCategory;
}
