import 'package:smart_todo_ai/utils/ai_constants.dart';

/// Helper class for AI-related date operations
class AIDateHelper {
  AIDateHelper._();

  /// Get today's date in ISO format
  static String getToday() {
    final now = DateTime.now();
    return _formatDate(now);
  }

  /// Get tomorrow's date in ISO format
  static String getTomorrow() {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return _formatDate(tomorrow);
  }

  /// Get next occurrence of a specific weekday
  static String getNextWeekday(int weekday) {
    final now = DateTime.now();
    int daysUntil = weekday - now.weekday;
    if (daysUntil <= 0) {
      daysUntil += 7;
    }
    final nextDate = now.add(Duration(days: daysUntil));
    return _formatDate(nextDate);
  }

  /// Get next Monday
  static String getNextMonday() => getNextWeekday(DateTime.monday);

  /// Get next Tuesday
  static String getNextTuesday() => getNextWeekday(DateTime.tuesday);

  /// Get next Wednesday
  static String getNextWednesday() => getNextWeekday(DateTime.wednesday);

  /// Get next Thursday
  static String getNextThursday() => getNextWeekday(DateTime.thursday);

  /// Get next Friday
  static String getNextFriday() => getNextWeekday(DateTime.friday);

  /// Get next Saturday
  static String getNextSaturday() => getNextWeekday(DateTime.saturday);

  /// Get next Sunday
  static String getNextSunday() => getNextWeekday(DateTime.sunday);

  /// Format date as YYYY-MM-DD
  static String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  /// Build context string for AI prompt
  static String buildDateContext() {
    return '''
Today is ${getToday()}
Tomorrow is ${getTomorrow()}
Next Monday: ${getNextMonday()}
Next Tuesday: ${getNextTuesday()}
Next Wednesday: ${getNextWednesday()}
Next Thursday: ${getNextThursday()}
Next Friday: ${getNextFriday()}
Next Saturday: ${getNextSaturday()}
Next Sunday: ${getNextSunday()}
''';
  }
}

/// Helper class for JSON cleaning and fixing
class JsonHelper {
  JsonHelper._();

  /// Extract JSON string from AI response
  static String extractJsonString(String response) {
    // Remove markdown code blocks
    String jsonString = response
        .replaceAll(AIConstants.markdownCodeBlock, '')
        .trim();

    // Find the first { and last } to extract JSON
    final int startIndex = jsonString.indexOf('{');
    final int endIndex = jsonString.lastIndexOf('}');

    if (startIndex == -1 || endIndex == -1 || endIndex <= startIndex) {
      return '{"tasks": []}';
    }

    jsonString = jsonString.substring(startIndex, endIndex + 1);

    // Try to fix common JSON issues
    return fixCommonJsonIssues(jsonString);
  }

  /// Fix common JSON formatting issues
  static String fixCommonJsonIssues(String jsonString) {
    String fixed = jsonString;

    // Fix trailing commas
    fixed = fixed.replaceAllMapped(
      AIConstants.trailingCommaInObject,
      (match) => '}',
    );
    fixed = fixed.replaceAllMapped(
      AIConstants.trailingCommaInArray,
      (match) => ']',
    );

    // Ensure null values are proper JSON null
    fixed = fixed.replaceAllMapped(
      AIConstants.nullStringValue,
      (match) => '"${match.group(1)}": null',
    );

    // Fix missing quotes around property values
    fixed = fixed.replaceAllMapped(
      AIConstants.unquotedPropertyValue,
      (match) => ': "${match.group(1)}"',
    );

    return fixed;
  }

  /// Ensure JSON has proper tasks structure
  static String ensureTasksStructure(String jsonString) {
    if (!jsonString.contains('"tasks"')) {
      return '{"tasks": []}';
    }
    return jsonString;
  }
}
