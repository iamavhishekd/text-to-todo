import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_todo_ai/models/enums.dart';
import 'package:uuid/uuid.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

/// Task model representing a todo item
///
/// Uses freezed for immutability and JSON serialization
@freezed
abstract class Task with _$Task {
  const Task._();

  const factory Task({
    @Default('') String id,
    required String title,
    String? description,
    DateTime? dueDate,
    DateTime? reminderTime,
    @Default(false) bool isCompleted,
    @Default(TaskPriority.medium) TaskPriority priority,
    @Default(TaskCategory.other) TaskCategory category,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Task;

  /// Factory constructor for creating a new task with generated ID
  factory Task.create({
    required String title,
    String? description,
    DateTime? dueDate,
    DateTime? reminderTime,
    TaskPriority priority = TaskPriority.medium,
    TaskCategory category = TaskCategory.other,
  }) {
    return Task(
      id: const Uuid().v4(),
      title: title,
      description: description,
      dueDate: dueDate,
      reminderTime: reminderTime,
      priority: priority,
      category: category,
      createdAt: DateTime.now(),
    );
  }

  /// Create Task from JSON
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  /// Create Task from database map
  ///
  /// This handles the conversion from SQLite storage format
  factory Task.fromDatabase(Map<String, dynamic> map) {
    return Task(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String?,
      dueDate: map['dueDate'] != null
          ? DateTime.parse(map['dueDate'] as String)
          : null,
      reminderTime: map['reminderTime'] != null
          ? DateTime.parse(map['reminderTime'] as String)
          : null,
      isCompleted: (map['isCompleted'] as int) == 1,
      priority: TaskPriority.values[map['priority'] as int],
      category: TaskCategory.values[map['category'] as int],
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: map['updatedAt'] != null
          ? DateTime.parse(map['updatedAt'] as String)
          : null,
    );
  }

  /// Convert Task to database map
  ///
  /// This prepares the task for SQLite storage
  Map<String, dynamic> toDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate?.toIso8601String(),
      'reminderTime': reminderTime?.toIso8601String(),
      'isCompleted': isCompleted ? 1 : 0,
      'priority': priority.index,
      'category': category.index,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  // Business logic methods

  /// Toggle task completion status
  Task toggleCompletion() {
    return copyWith(isCompleted: !isCompleted, updatedAt: DateTime.now());
  }

  /// Mark task as completed
  Task markAsCompleted() {
    return copyWith(isCompleted: true, updatedAt: DateTime.now());
  }

  /// Mark task as incomplete
  Task markAsIncomplete() {
    return copyWith(isCompleted: false, updatedAt: DateTime.now());
  }

  /// Update task with new updatedAt timestamp
  Task withUpdate() {
    return copyWith(updatedAt: DateTime.now());
  }

  // Computed properties

  /// Check if task is due today
  bool get isDueToday {
    if (dueDate == null) return false;
    final now = DateTime.now();
    return dueDate!.year == now.year &&
        dueDate!.month == now.month &&
        dueDate!.day == now.day;
  }

  /// Check if task is overdue
  bool get isOverdue {
    if (dueDate == null || isCompleted) return false;
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);
    final DateTime taskDate = DateTime(
      dueDate!.year,
      dueDate!.month,
      dueDate!.day,
    );
    return taskDate.isBefore(today);
  }

  /// Check if task is due in the future
  bool get isUpcoming {
    if (dueDate == null) return false;
    final DateTime now = DateTime.now();
    return dueDate!.isAfter(now) && !isDueToday;
  }

  /// Check if task has a reminder set
  bool get hasReminder => reminderTime != null;

  /// Check if reminder is in the past
  bool get isReminderPast {
    if (reminderTime == null) return false;
    return reminderTime!.isBefore(DateTime.now());
  }

  /// Get days until due date
  int? get daysUntilDue {
    if (dueDate == null) return null;
    final DateTime now = DateTime.now();
    final DateTime today = DateTime(now.year, now.month, now.day);
    final DateTime taskDate = DateTime(
      dueDate!.year,
      dueDate!.month,
      dueDate!.day,
    );
    return taskDate.difference(today).inDays;
  }

  /// Check if task is high priority and overdue
  bool get isUrgent => priority == TaskPriority.high && isOverdue;
}
