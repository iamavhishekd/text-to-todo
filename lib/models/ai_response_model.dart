import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_response_model.freezed.dart';
part 'ai_response_model.g.dart';

/// AI response model containing parsed tasks
@freezed
abstract class AIResponse with _$AIResponse {
  const factory AIResponse({required List<AITask> tasks}) = _AIResponse;

  factory AIResponse.fromJson(Map<String, dynamic> json) =>
      _$AIResponseFromJson(json);

  /// Create an empty response
  factory AIResponse.empty() => const AIResponse(tasks: []);
}

/// Individual task parsed from AI
@freezed
abstract class AITask with _$AITask {
  const AITask._();

  const factory AITask({
    required String title,
    @JsonKey(name: 'dueDate') String? dueDate,
    @JsonKey(name: 'reminderTime') String? reminderTime,
    @Default('medium') String priority,
    @Default('other') String category,
  }) = _AITask;

  factory AITask.fromJson(Map<String, dynamic> json) => _$AITaskFromJson(json);

  /// Parse due date safely
  DateTime? get parsedDueDate {
    if (dueDate == null || dueDate!.isEmpty) return null;
    return DateTime.tryParse(dueDate!);
  }

  /// Parse reminder time safely
  DateTime? get parsedReminderTime {
    if (reminderTime == null || reminderTime!.isEmpty) return null;
    return DateTime.tryParse(reminderTime!);
  }

  /// Validate if the task has minimum required data
  bool get isValid => title.trim().isNotEmpty;
}
