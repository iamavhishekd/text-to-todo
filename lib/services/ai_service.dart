import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:smart_todo_ai/models/ai_response_model.dart';
import 'package:smart_todo_ai/models/enums.dart';
import 'package:smart_todo_ai/models/task_model.dart';
import 'package:smart_todo_ai/utils/ai_constants.dart';
import 'package:smart_todo_ai/utils/ai_helpers.dart';
import 'package:smart_todo_ai/utils/exceptions.dart';

/// Service for AI-powered task parsing using Google's Generative AI
class AIService {
  late final GenerativeModel _model;

  AIService() {
    _model = GenerativeModel(
      model: AIConstants.aiModel,
      apiKey: AIConstants.apiKey,
    );
  }

  /// Parse natural language input into structured tasks
  ///
  /// Takes a natural language string and returns a list of parsed tasks.
  /// If parsing fails, returns a single task with the input as the title.
  Future<List<Task>> parseNaturalLanguage(String input) async {
    try {
      final String prompt = _buildPrompt(input);
      final GenerateContentResponse response = await _generateContent(prompt);

      if (response.text == null) {
        throw const AIServiceException(AIConstants.noResponseError);
      }

      final String jsonString = JsonHelper.extractJsonString(response.text!);
      final aiResponse = _parseAIResponse(jsonString);

      return _convertToTasks(aiResponse);
    } on AIServiceException {
      rethrow;
    } catch (e) {
      // Fallback: create a single task with the input as title
      print('AI parsing error: $e');
      return [Task.create(title: input)];
    }
  }

  /// Build the prompt for the AI model
  String _buildPrompt(String input) {
    final dateContext = AIDateHelper.buildDateContext();

    return '''
${AIConstants.systemPrompt}

$dateContext

User request: "$input"

${AIConstants.responseFormat}
''';
  }

  /// Generate content using the AI model
  Future<GenerateContentResponse> _generateContent(String prompt) async {
    try {
      final Content content = Content.text(prompt);
      return await _model.generateContent([content]);
    } catch (e, stackTrace) {
      throw AIServiceException(
        AIConstants.networkError,
        details: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  /// Parse the AI response JSON into an AIResponse object
  AIResponse _parseAIResponse(String jsonString) {
    try {
      print('Extracted JSON: $jsonString');

      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      return AIResponse.fromJson(jsonMap);
    } catch (e) {
      print('Failed to parse AI response: $e');
      print('Problematic JSON: $jsonString');

      // Try to fix and parse again
      try {
        final fixedJson = _attemptToFixJson(jsonString);
        final jsonMap = json.decode(fixedJson) as Map<String, dynamic>;
        return AIResponse.fromJson(jsonMap);
      } catch (e2) {
        print('Retry parsing also failed: $e2');
        throw JsonParsingException(
          AIConstants.jsonParsingError,
          jsonString: jsonString,
          details: e2.toString(),
        );
      }
    }
  }

  /// Attempt to fix malformed JSON
  String _attemptToFixJson(String jsonString) {
    final String fixed = JsonHelper.ensureTasksStructure(jsonString);

    // Parse as a Map to validate structure
    try {
      final tempMap = json.decode(fixed) as Map<String, dynamic>;

      if (!tempMap.containsKey('tasks')) {
        tempMap['tasks'] = [];
      }

      // Ensure tasks is a List
      if (tempMap['tasks'] is! List) {
        tempMap['tasks'] = [];
      }

      return json.encode(tempMap);
    } catch (e) {
      return '{"tasks": []}';
    }
  }

  /// Convert AIResponse to a list of Task objects
  List<Task> _convertToTasks(AIResponse response) {
    final tasks = response.tasks.where((aiTask) => aiTask.isValid).map((
      aiTask,
    ) {
      return Task.create(
        title: aiTask.title,
        dueDate: aiTask.parsedDueDate,
        reminderTime: aiTask.parsedReminderTime,
        priority: TaskPriority.fromString(aiTask.priority),
        category: TaskCategory.fromString(aiTask.category),
      );
    }).toList();

    if (tasks.isEmpty) {
      throw const AIServiceException(AIConstants.noTasksExtractedError);
    }

    return tasks;
  }
}
