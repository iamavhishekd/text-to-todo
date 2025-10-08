/// Base exception class
abstract class AppException implements Exception {
  final String message;
  final String? details;
  final StackTrace? stackTrace;

  const AppException(this.message, {this.details, this.stackTrace});

  @override
  String toString() {
    if (details != null) {
      return '$message: $details';
    }
    return message;
  }
}

/// Database related exceptions
class DbException extends AppException {
  const DbException(super.message, {super.details, super.stackTrace});
}

/// AI service related exceptions
class AIServiceException extends AppException {
  const AIServiceException(super.message, {super.details, super.stackTrace});
}

/// JSON parsing exceptions
class JsonParsingException extends AppException {
  final String? jsonString;

  const JsonParsingException(
    super.message, {
    this.jsonString,
    super.details,
    super.stackTrace,
  });

  @override
  String toString() {
    final buffer = StringBuffer(message);
    if (details != null) {
      buffer.write(': $details');
    }
    if (jsonString != null) {
      buffer.write('\nJSON: $jsonString');
    }
    return buffer.toString();
  }
}

/// Network related exceptions
class NetworkException extends AppException {
  const NetworkException(super.message, {super.details, super.stackTrace});
}

/// Validation exceptions
class ValidationException extends AppException {
  final Map<String, String>? fieldErrors;

  const ValidationException(
    super.message, {
    this.fieldErrors,
    super.details,
    super.stackTrace,
  });

  @override
  String toString() {
    final buffer = StringBuffer(message);
    if (fieldErrors != null && fieldErrors!.isNotEmpty) {
      buffer.write('\nField errors:');
      fieldErrors!.forEach((field, error) {
        buffer.write('\n  $field: $error');
      });
    }
    return buffer.toString();
  }
}
