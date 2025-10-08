// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AIResponse {

 List<AITask> get tasks;
/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AIResponseCopyWith<AIResponse> get copyWith => _$AIResponseCopyWithImpl<AIResponse>(this as AIResponse, _$identity);

  /// Serializes this AIResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AIResponse&&const DeepCollectionEquality().equals(other.tasks, tasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'AIResponse(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $AIResponseCopyWith<$Res>  {
  factory $AIResponseCopyWith(AIResponse value, $Res Function(AIResponse) _then) = _$AIResponseCopyWithImpl;
@useResult
$Res call({
 List<AITask> tasks
});




}
/// @nodoc
class _$AIResponseCopyWithImpl<$Res>
    implements $AIResponseCopyWith<$Res> {
  _$AIResponseCopyWithImpl(this._self, this._then);

  final AIResponse _self;
  final $Res Function(AIResponse) _then;

/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasks = null,}) {
  return _then(_self.copyWith(
tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<AITask>,
  ));
}

}


/// Adds pattern-matching-related methods to [AIResponse].
extension AIResponsePatterns on AIResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AIResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AIResponse value)  $default,){
final _that = this;
switch (_that) {
case _AIResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AIResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AITask> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that.tasks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AITask> tasks)  $default,) {final _that = this;
switch (_that) {
case _AIResponse():
return $default(_that.tasks);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AITask> tasks)?  $default,) {final _that = this;
switch (_that) {
case _AIResponse() when $default != null:
return $default(_that.tasks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AIResponse implements AIResponse {
  const _AIResponse({required final  List<AITask> tasks}): _tasks = tasks;
  factory _AIResponse.fromJson(Map<String, dynamic> json) => _$AIResponseFromJson(json);

 final  List<AITask> _tasks;
@override List<AITask> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AIResponseCopyWith<_AIResponse> get copyWith => __$AIResponseCopyWithImpl<_AIResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AIResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AIResponse&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'AIResponse(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$AIResponseCopyWith<$Res> implements $AIResponseCopyWith<$Res> {
  factory _$AIResponseCopyWith(_AIResponse value, $Res Function(_AIResponse) _then) = __$AIResponseCopyWithImpl;
@override @useResult
$Res call({
 List<AITask> tasks
});




}
/// @nodoc
class __$AIResponseCopyWithImpl<$Res>
    implements _$AIResponseCopyWith<$Res> {
  __$AIResponseCopyWithImpl(this._self, this._then);

  final _AIResponse _self;
  final $Res Function(_AIResponse) _then;

/// Create a copy of AIResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(_AIResponse(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<AITask>,
  ));
}


}


/// @nodoc
mixin _$AITask {

 String get title;@JsonKey(name: 'dueDate') String? get dueDate;@JsonKey(name: 'reminderTime') String? get reminderTime; String get priority; String get category;
/// Create a copy of AITask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AITaskCopyWith<AITask> get copyWith => _$AITaskCopyWithImpl<AITask>(this as AITask, _$identity);

  /// Serializes this AITask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AITask&&(identical(other.title, title) || other.title == title)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,dueDate,reminderTime,priority,category);

@override
String toString() {
  return 'AITask(title: $title, dueDate: $dueDate, reminderTime: $reminderTime, priority: $priority, category: $category)';
}


}

/// @nodoc
abstract mixin class $AITaskCopyWith<$Res>  {
  factory $AITaskCopyWith(AITask value, $Res Function(AITask) _then) = _$AITaskCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(name: 'dueDate') String? dueDate,@JsonKey(name: 'reminderTime') String? reminderTime, String priority, String category
});




}
/// @nodoc
class _$AITaskCopyWithImpl<$Res>
    implements $AITaskCopyWith<$Res> {
  _$AITaskCopyWithImpl(this._self, this._then);

  final AITask _self;
  final $Res Function(AITask) _then;

/// Create a copy of AITask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? dueDate = freezed,Object? reminderTime = freezed,Object? priority = null,Object? category = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AITask].
extension AITaskPatterns on AITask {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AITask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AITask() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AITask value)  $default,){
final _that = this;
switch (_that) {
case _AITask():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AITask value)?  $default,){
final _that = this;
switch (_that) {
case _AITask() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'dueDate')  String? dueDate, @JsonKey(name: 'reminderTime')  String? reminderTime,  String priority,  String category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AITask() when $default != null:
return $default(_that.title,_that.dueDate,_that.reminderTime,_that.priority,_that.category);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(name: 'dueDate')  String? dueDate, @JsonKey(name: 'reminderTime')  String? reminderTime,  String priority,  String category)  $default,) {final _that = this;
switch (_that) {
case _AITask():
return $default(_that.title,_that.dueDate,_that.reminderTime,_that.priority,_that.category);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(name: 'dueDate')  String? dueDate, @JsonKey(name: 'reminderTime')  String? reminderTime,  String priority,  String category)?  $default,) {final _that = this;
switch (_that) {
case _AITask() when $default != null:
return $default(_that.title,_that.dueDate,_that.reminderTime,_that.priority,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AITask extends AITask {
  const _AITask({required this.title, @JsonKey(name: 'dueDate') this.dueDate, @JsonKey(name: 'reminderTime') this.reminderTime, this.priority = 'medium', this.category = 'other'}): super._();
  factory _AITask.fromJson(Map<String, dynamic> json) => _$AITaskFromJson(json);

@override final  String title;
@override@JsonKey(name: 'dueDate') final  String? dueDate;
@override@JsonKey(name: 'reminderTime') final  String? reminderTime;
@override@JsonKey() final  String priority;
@override@JsonKey() final  String category;

/// Create a copy of AITask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AITaskCopyWith<_AITask> get copyWith => __$AITaskCopyWithImpl<_AITask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AITaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AITask&&(identical(other.title, title) || other.title == title)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,dueDate,reminderTime,priority,category);

@override
String toString() {
  return 'AITask(title: $title, dueDate: $dueDate, reminderTime: $reminderTime, priority: $priority, category: $category)';
}


}

/// @nodoc
abstract mixin class _$AITaskCopyWith<$Res> implements $AITaskCopyWith<$Res> {
  factory _$AITaskCopyWith(_AITask value, $Res Function(_AITask) _then) = __$AITaskCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(name: 'dueDate') String? dueDate,@JsonKey(name: 'reminderTime') String? reminderTime, String priority, String category
});




}
/// @nodoc
class __$AITaskCopyWithImpl<$Res>
    implements _$AITaskCopyWith<$Res> {
  __$AITaskCopyWithImpl(this._self, this._then);

  final _AITask _self;
  final $Res Function(_AITask) _then;

/// Create a copy of AITask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? dueDate = freezed,Object? reminderTime = freezed,Object? priority = null,Object? category = null,}) {
  return _then(_AITask(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String?,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as String?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
