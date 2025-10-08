part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = TaskInitial;
  const factory TaskState.loading() = TaskLoading;
  const factory TaskState.loaded({
    required List<Task> tasks,
    required List<Task> todayTasks,
    required List<Task> upcomingTasks,
    required List<Task> completedTasks,
  }) = TaskLoaded;
  const factory TaskState.error(String message) = TaskError;

  // AI Parsing States
  const factory TaskState.aiParsing() = TaskAIParsing;
  const factory TaskState.aiParsingSuccess(List<Task> tasks) =
      TaskAIParsingSuccess;
  const factory TaskState.aiParsingError(String error) = TaskAIParsingError;
}
