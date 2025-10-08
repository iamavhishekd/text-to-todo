// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AIResponse _$AIResponseFromJson(Map<String, dynamic> json) => _AIResponse(
  tasks: (json['tasks'] as List<dynamic>)
      .map((e) => AITask.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AIResponseToJson(_AIResponse instance) =>
    <String, dynamic>{'tasks': instance.tasks.map((e) => e.toJson()).toList()};

_AITask _$AITaskFromJson(Map<String, dynamic> json) => _AITask(
  title: json['title'] as String,
  dueDate: json['dueDate'] as String?,
  reminderTime: json['reminderTime'] as String?,
  priority: json['priority'] as String? ?? 'medium',
  category: json['category'] as String? ?? 'other',
);

Map<String, dynamic> _$AITaskToJson(_AITask instance) => <String, dynamic>{
  'title': instance.title,
  'dueDate': instance.dueDate,
  'reminderTime': instance.reminderTime,
  'priority': instance.priority,
  'category': instance.category,
};
