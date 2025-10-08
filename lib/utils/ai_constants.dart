/// Constants for AI service
library;

import 'package:smart_todo_ai/utils/constants.dart';

class AIConstants {
  AIConstants._();

  // Model configuration
  static const String apiKey = geminiAPIKey;

  static const String aiModel = modelName;

  // Prompt templates
  static const String systemPrompt = '''
You are a task parsing assistant. Parse natural language requests into structured tasks.

Extract ALL tasks from the input. For each task, provide:
1. A clear title
2. Due date if mentioned (in format YYYY-MM-DDTHH:MM:SS)
3. Reminder time if mentioned (in format YYYY-MM-DDTHH:MM:SS)
4. Priority: "low", "medium", or "high"
5. Category: "personal", "work", "shopping", "health", "home", or "other"

Rules:
- Convert relative dates properly
- If time is mentioned (e.g., "at 10 AM"), set reminderTime
- If only date is mentioned (e.g., "before Friday"), set dueDate
- Priority: "high" for urgent/important/ASAP, "low" for casual, else "medium"
- Infer category from context
- Break compound sentences into separate tasks
''';

  static const String responseFormat = '''
Return JSON in this EXACT format, nothing else:

{
  "tasks": [
    {
      "title": "Task description",
      "dueDate": "2024-01-15T00:00:00" or null,
      "reminderTime": "2024-01-15T10:00:00" or null,
      "priority": "medium",
      "category": "personal"
    }
  ]
}

If no tasks can be extracted, return: {"tasks": []}

Start your response directly with the JSON object. Do not include any explanations, markdown, or additional text.
''';

  // JSON cleaning patterns
  static final RegExp markdownCodeBlock = RegExp(r'```(?:json)?');
  static final RegExp trailingCommaInObject = RegExp(r',\s*}');
  static final RegExp trailingCommaInArray = RegExp(r',\s*]');
  static final RegExp nullStringValue = RegExp(
    r'"(dueDate|reminderTime)":\s*"null"',
  );
  static final RegExp unquotedPropertyValue = RegExp(
    r':\s*([a-zA-Z_][a-zA-Z0-9_]*(?=\s*[,}]))',
  );

  // Error messages
  static const String noResponseError = 'No response from AI';
  static const String noTasksExtractedError = 'No tasks could be extracted';
  static const String jsonParsingError = 'Failed to parse AI response';
  static const String networkError = 'Network error occurred';
}
