import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/// A Result type for handling success and failure cases
///
/// This provides a type-safe way to handle operations that can fail
/// without throwing exceptions.
@freezed
class Result<T> with _$Result<T> {
  const Result._();

  /// Success case with data
  const factory Result.success(T data) = Success<T>;

  /// Failure case with error
  const factory Result.failure(String error, {Exception? exception}) =
      Failure<T>;

  /// Check if the result is a success
  bool get isSuccess => this is Success<T>;

  /// Check if the result is a failure
  bool get isFailure => this is Failure<T>;

  /// Get the data if success, otherwise return null
  T? get dataOrNull =>
      when(success: (data) => data, failure: (error, exception) => null);

  /// Get the error message if failure, otherwise return null
  String? get errorOrNull =>
      when(success: (data) => null, failure: (error, exception) => error);

  /// Get the exception if failure, otherwise return null
  Exception? get exceptionOrNull =>
      when(success: (data) => null, failure: (error, exception) => exception);

  /// Map the success value to a new type
  Result<R> map<R>(R Function(T data) transform) {
    return when(
      success: (data) => Result.success(transform(data)),
      failure: (error, exception) =>
          Result.failure(error, exception: exception),
    );
  }

  /// FlatMap for chaining operations
  Result<R> flatMap<R>(Result<R> Function(T data) transform) {
    return when(
      success: (data) => transform(data),
      failure: (error, exception) =>
          Result.failure(error, exception: exception),
    );
  }

  /// Execute a function if the result is a success
  Result<T> onSuccess(void Function(T data) action) {
    if (this is Success<T>) {
      action((this as Success<T>).data);
    }
    return this;
  }

  /// Execute a function if the result is a failure
  Result<T> onFailure(
    void Function(String error, Exception? exception) action,
  ) {
    if (this is Failure<T>) {
      final failure = this as Failure<T>;
      action(failure.error, failure.exception);
    }
    return this;
  }

  /// Get the data or throw an exception
  T getOrThrow() {
    return when(
      success: (data) => data,
      failure: (error, exception) => throw exception ?? Exception(error),
    );
  }

  /// Get the data or return a default value
  T getOrElse(T defaultValue) {
    return when(
      success: (data) => data,
      failure: (error, exception) => defaultValue,
    );
  }

  /// Get the data or compute a default value
  T getOrElseCompute(T Function() compute) {
    return when(
      success: (data) => data,
      failure: (error, exception) => compute(),
    );
  }
}

/// Extension for converting Future<T> to Future<Result<T>>
extension FutureResultExtension<T> on Future<T> {
  /// Wrap a Future in a Result, catching any exceptions
  Future<Result<T>> toResult() async {
    try {
      final data = await this;
      return Result.success(data);
    } catch (e, stackTrace) {
      if (e is Exception) {
        return Result.failure(e.toString(), exception: e);
      }
      return Result.failure(
        e.toString(),
        exception: Exception('$e\n$stackTrace'),
      );
    }
  }
}

/// Extension for converting nullable values to Result
extension NullableResultExtension<T> on T? {
  /// Convert a nullable value to a Result
  Result<T> toResult(String errorMessage) {
    if (this != null) {
      return Result.success(this as T);
    }
    return Result.failure(errorMessage);
  }
}
