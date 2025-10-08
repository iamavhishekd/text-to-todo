// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent()';
}


}

/// @nodoc
class $TaskEventCopyWith<$Res>  {
$TaskEventCopyWith(TaskEvent _, $Res Function(TaskEvent) __);
}


/// Adds pattern-matching-related methods to [TaskEvent].
extension TaskEventPatterns on TaskEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadTasks value)?  loadTasks,TResult Function( AddTask value)?  addTask,TResult Function( UpdateTask value)?  updateTask,TResult Function( DeleteTask value)?  deleteTask,TResult Function( ToggleTask value)?  toggleTask,TResult Function( ParseTasksFromAI value)?  parseTasksFromAI,TResult Function( ClearCompleted value)?  clearCompleted,TResult Function( FilterByCategory value)?  filterByCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that);case AddTask() when addTask != null:
return addTask(_that);case UpdateTask() when updateTask != null:
return updateTask(_that);case DeleteTask() when deleteTask != null:
return deleteTask(_that);case ToggleTask() when toggleTask != null:
return toggleTask(_that);case ParseTasksFromAI() when parseTasksFromAI != null:
return parseTasksFromAI(_that);case ClearCompleted() when clearCompleted != null:
return clearCompleted(_that);case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadTasks value)  loadTasks,required TResult Function( AddTask value)  addTask,required TResult Function( UpdateTask value)  updateTask,required TResult Function( DeleteTask value)  deleteTask,required TResult Function( ToggleTask value)  toggleTask,required TResult Function( ParseTasksFromAI value)  parseTasksFromAI,required TResult Function( ClearCompleted value)  clearCompleted,required TResult Function( FilterByCategory value)  filterByCategory,}){
final _that = this;
switch (_that) {
case LoadTasks():
return loadTasks(_that);case AddTask():
return addTask(_that);case UpdateTask():
return updateTask(_that);case DeleteTask():
return deleteTask(_that);case ToggleTask():
return toggleTask(_that);case ParseTasksFromAI():
return parseTasksFromAI(_that);case ClearCompleted():
return clearCompleted(_that);case FilterByCategory():
return filterByCategory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadTasks value)?  loadTasks,TResult? Function( AddTask value)?  addTask,TResult? Function( UpdateTask value)?  updateTask,TResult? Function( DeleteTask value)?  deleteTask,TResult? Function( ToggleTask value)?  toggleTask,TResult? Function( ParseTasksFromAI value)?  parseTasksFromAI,TResult? Function( ClearCompleted value)?  clearCompleted,TResult? Function( FilterByCategory value)?  filterByCategory,}){
final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks(_that);case AddTask() when addTask != null:
return addTask(_that);case UpdateTask() when updateTask != null:
return updateTask(_that);case DeleteTask() when deleteTask != null:
return deleteTask(_that);case ToggleTask() when toggleTask != null:
return toggleTask(_that);case ParseTasksFromAI() when parseTasksFromAI != null:
return parseTasksFromAI(_that);case ClearCompleted() when clearCompleted != null:
return clearCompleted(_that);case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadTasks,TResult Function( Task task)?  addTask,TResult Function( Task task)?  updateTask,TResult Function( String taskId)?  deleteTask,TResult Function( String taskId)?  toggleTask,TResult Function( String input)?  parseTasksFromAI,TResult Function()?  clearCompleted,TResult Function( String category)?  filterByCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks();case AddTask() when addTask != null:
return addTask(_that.task);case UpdateTask() when updateTask != null:
return updateTask(_that.task);case DeleteTask() when deleteTask != null:
return deleteTask(_that.taskId);case ToggleTask() when toggleTask != null:
return toggleTask(_that.taskId);case ParseTasksFromAI() when parseTasksFromAI != null:
return parseTasksFromAI(_that.input);case ClearCompleted() when clearCompleted != null:
return clearCompleted();case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadTasks,required TResult Function( Task task)  addTask,required TResult Function( Task task)  updateTask,required TResult Function( String taskId)  deleteTask,required TResult Function( String taskId)  toggleTask,required TResult Function( String input)  parseTasksFromAI,required TResult Function()  clearCompleted,required TResult Function( String category)  filterByCategory,}) {final _that = this;
switch (_that) {
case LoadTasks():
return loadTasks();case AddTask():
return addTask(_that.task);case UpdateTask():
return updateTask(_that.task);case DeleteTask():
return deleteTask(_that.taskId);case ToggleTask():
return toggleTask(_that.taskId);case ParseTasksFromAI():
return parseTasksFromAI(_that.input);case ClearCompleted():
return clearCompleted();case FilterByCategory():
return filterByCategory(_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadTasks,TResult? Function( Task task)?  addTask,TResult? Function( Task task)?  updateTask,TResult? Function( String taskId)?  deleteTask,TResult? Function( String taskId)?  toggleTask,TResult? Function( String input)?  parseTasksFromAI,TResult? Function()?  clearCompleted,TResult? Function( String category)?  filterByCategory,}) {final _that = this;
switch (_that) {
case LoadTasks() when loadTasks != null:
return loadTasks();case AddTask() when addTask != null:
return addTask(_that.task);case UpdateTask() when updateTask != null:
return updateTask(_that.task);case DeleteTask() when deleteTask != null:
return deleteTask(_that.taskId);case ToggleTask() when toggleTask != null:
return toggleTask(_that.taskId);case ParseTasksFromAI() when parseTasksFromAI != null:
return parseTasksFromAI(_that.input);case ClearCompleted() when clearCompleted != null:
return clearCompleted();case FilterByCategory() when filterByCategory != null:
return filterByCategory(_that.category);case _:
  return null;

}
}

}

/// @nodoc


class LoadTasks implements TaskEvent {
  const LoadTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.loadTasks()';
}


}




/// @nodoc


class AddTask implements TaskEvent {
  const AddTask(this.task);
  

 final  Task task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTaskCopyWith<AddTask> get copyWith => _$AddTaskCopyWithImpl<AddTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.addTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $AddTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $AddTaskCopyWith(AddTask value, $Res Function(AddTask) _then) = _$AddTaskCopyWithImpl;
@useResult
$Res call({
 Task task
});


$TaskCopyWith<$Res> get task;

}
/// @nodoc
class _$AddTaskCopyWithImpl<$Res>
    implements $AddTaskCopyWith<$Res> {
  _$AddTaskCopyWithImpl(this._self, this._then);

  final AddTask _self;
  final $Res Function(AddTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(AddTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task,
  ));
}

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get task {
  
  return $TaskCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class UpdateTask implements TaskEvent {
  const UpdateTask(this.task);
  

 final  Task task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTaskCopyWith<UpdateTask> get copyWith => _$UpdateTaskCopyWithImpl<UpdateTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.updateTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $UpdateTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $UpdateTaskCopyWith(UpdateTask value, $Res Function(UpdateTask) _then) = _$UpdateTaskCopyWithImpl;
@useResult
$Res call({
 Task task
});


$TaskCopyWith<$Res> get task;

}
/// @nodoc
class _$UpdateTaskCopyWithImpl<$Res>
    implements $UpdateTaskCopyWith<$Res> {
  _$UpdateTaskCopyWithImpl(this._self, this._then);

  final UpdateTask _self;
  final $Res Function(UpdateTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(UpdateTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task,
  ));
}

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res> get task {
  
  return $TaskCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc


class DeleteTask implements TaskEvent {
  const DeleteTask(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTaskCopyWith<DeleteTask> get copyWith => _$DeleteTaskCopyWithImpl<DeleteTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTask&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.deleteTask(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $DeleteTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $DeleteTaskCopyWith(DeleteTask value, $Res Function(DeleteTask) _then) = _$DeleteTaskCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$DeleteTaskCopyWithImpl<$Res>
    implements $DeleteTaskCopyWith<$Res> {
  _$DeleteTaskCopyWithImpl(this._self, this._then);

  final DeleteTask _self;
  final $Res Function(DeleteTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(DeleteTask(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleTask implements TaskEvent {
  const ToggleTask(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleTaskCopyWith<ToggleTask> get copyWith => _$ToggleTaskCopyWithImpl<ToggleTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleTask&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.toggleTask(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $ToggleTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $ToggleTaskCopyWith(ToggleTask value, $Res Function(ToggleTask) _then) = _$ToggleTaskCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$ToggleTaskCopyWithImpl<$Res>
    implements $ToggleTaskCopyWith<$Res> {
  _$ToggleTaskCopyWithImpl(this._self, this._then);

  final ToggleTask _self;
  final $Res Function(ToggleTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(ToggleTask(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ParseTasksFromAI implements TaskEvent {
  const ParseTasksFromAI(this.input);
  

 final  String input;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParseTasksFromAICopyWith<ParseTasksFromAI> get copyWith => _$ParseTasksFromAICopyWithImpl<ParseTasksFromAI>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParseTasksFromAI&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'TaskEvent.parseTasksFromAI(input: $input)';
}


}

/// @nodoc
abstract mixin class $ParseTasksFromAICopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $ParseTasksFromAICopyWith(ParseTasksFromAI value, $Res Function(ParseTasksFromAI) _then) = _$ParseTasksFromAICopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$ParseTasksFromAICopyWithImpl<$Res>
    implements $ParseTasksFromAICopyWith<$Res> {
  _$ParseTasksFromAICopyWithImpl(this._self, this._then);

  final ParseTasksFromAI _self;
  final $Res Function(ParseTasksFromAI) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(ParseTasksFromAI(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearCompleted implements TaskEvent {
  const ClearCompleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.clearCompleted()';
}


}




/// @nodoc


class FilterByCategory implements TaskEvent {
  const FilterByCategory(this.category);
  

 final  String category;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterByCategoryCopyWith<FilterByCategory> get copyWith => _$FilterByCategoryCopyWithImpl<FilterByCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterByCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'TaskEvent.filterByCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $FilterByCategoryCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $FilterByCategoryCopyWith(FilterByCategory value, $Res Function(FilterByCategory) _then) = _$FilterByCategoryCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$FilterByCategoryCopyWithImpl<$Res>
    implements $FilterByCategoryCopyWith<$Res> {
  _$FilterByCategoryCopyWithImpl(this._self, this._then);

  final FilterByCategory _self;
  final $Res Function(FilterByCategory) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(FilterByCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TaskState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState()';
}


}

/// @nodoc
class $TaskStateCopyWith<$Res>  {
$TaskStateCopyWith(TaskState _, $Res Function(TaskState) __);
}


/// Adds pattern-matching-related methods to [TaskState].
extension TaskStatePatterns on TaskState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TaskInitial value)?  initial,TResult Function( TaskLoading value)?  loading,TResult Function( TaskLoaded value)?  loaded,TResult Function( TaskError value)?  error,TResult Function( TaskAIParsing value)?  aiParsing,TResult Function( TaskAIParsingSuccess value)?  aiParsingSuccess,TResult Function( TaskAIParsingError value)?  aiParsingError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial(_that);case TaskLoading() when loading != null:
return loading(_that);case TaskLoaded() when loaded != null:
return loaded(_that);case TaskError() when error != null:
return error(_that);case TaskAIParsing() when aiParsing != null:
return aiParsing(_that);case TaskAIParsingSuccess() when aiParsingSuccess != null:
return aiParsingSuccess(_that);case TaskAIParsingError() when aiParsingError != null:
return aiParsingError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TaskInitial value)  initial,required TResult Function( TaskLoading value)  loading,required TResult Function( TaskLoaded value)  loaded,required TResult Function( TaskError value)  error,required TResult Function( TaskAIParsing value)  aiParsing,required TResult Function( TaskAIParsingSuccess value)  aiParsingSuccess,required TResult Function( TaskAIParsingError value)  aiParsingError,}){
final _that = this;
switch (_that) {
case TaskInitial():
return initial(_that);case TaskLoading():
return loading(_that);case TaskLoaded():
return loaded(_that);case TaskError():
return error(_that);case TaskAIParsing():
return aiParsing(_that);case TaskAIParsingSuccess():
return aiParsingSuccess(_that);case TaskAIParsingError():
return aiParsingError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TaskInitial value)?  initial,TResult? Function( TaskLoading value)?  loading,TResult? Function( TaskLoaded value)?  loaded,TResult? Function( TaskError value)?  error,TResult? Function( TaskAIParsing value)?  aiParsing,TResult? Function( TaskAIParsingSuccess value)?  aiParsingSuccess,TResult? Function( TaskAIParsingError value)?  aiParsingError,}){
final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial(_that);case TaskLoading() when loading != null:
return loading(_that);case TaskLoaded() when loaded != null:
return loaded(_that);case TaskError() when error != null:
return error(_that);case TaskAIParsing() when aiParsing != null:
return aiParsing(_that);case TaskAIParsingSuccess() when aiParsingSuccess != null:
return aiParsingSuccess(_that);case TaskAIParsingError() when aiParsingError != null:
return aiParsingError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Task> tasks,  List<Task> todayTasks,  List<Task> upcomingTasks,  List<Task> completedTasks)?  loaded,TResult Function( String message)?  error,TResult Function()?  aiParsing,TResult Function( List<Task> tasks)?  aiParsingSuccess,TResult Function( String error)?  aiParsingError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial();case TaskLoading() when loading != null:
return loading();case TaskLoaded() when loaded != null:
return loaded(_that.tasks,_that.todayTasks,_that.upcomingTasks,_that.completedTasks);case TaskError() when error != null:
return error(_that.message);case TaskAIParsing() when aiParsing != null:
return aiParsing();case TaskAIParsingSuccess() when aiParsingSuccess != null:
return aiParsingSuccess(_that.tasks);case TaskAIParsingError() when aiParsingError != null:
return aiParsingError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Task> tasks,  List<Task> todayTasks,  List<Task> upcomingTasks,  List<Task> completedTasks)  loaded,required TResult Function( String message)  error,required TResult Function()  aiParsing,required TResult Function( List<Task> tasks)  aiParsingSuccess,required TResult Function( String error)  aiParsingError,}) {final _that = this;
switch (_that) {
case TaskInitial():
return initial();case TaskLoading():
return loading();case TaskLoaded():
return loaded(_that.tasks,_that.todayTasks,_that.upcomingTasks,_that.completedTasks);case TaskError():
return error(_that.message);case TaskAIParsing():
return aiParsing();case TaskAIParsingSuccess():
return aiParsingSuccess(_that.tasks);case TaskAIParsingError():
return aiParsingError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Task> tasks,  List<Task> todayTasks,  List<Task> upcomingTasks,  List<Task> completedTasks)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  aiParsing,TResult? Function( List<Task> tasks)?  aiParsingSuccess,TResult? Function( String error)?  aiParsingError,}) {final _that = this;
switch (_that) {
case TaskInitial() when initial != null:
return initial();case TaskLoading() when loading != null:
return loading();case TaskLoaded() when loaded != null:
return loaded(_that.tasks,_that.todayTasks,_that.upcomingTasks,_that.completedTasks);case TaskError() when error != null:
return error(_that.message);case TaskAIParsing() when aiParsing != null:
return aiParsing();case TaskAIParsingSuccess() when aiParsingSuccess != null:
return aiParsingSuccess(_that.tasks);case TaskAIParsingError() when aiParsingError != null:
return aiParsingError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class TaskInitial implements TaskState {
  const TaskInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState.initial()';
}


}




/// @nodoc


class TaskLoading implements TaskState {
  const TaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState.loading()';
}


}




/// @nodoc


class TaskLoaded implements TaskState {
  const TaskLoaded({required final  List<Task> tasks, required final  List<Task> todayTasks, required final  List<Task> upcomingTasks, required final  List<Task> completedTasks}): _tasks = tasks,_todayTasks = todayTasks,_upcomingTasks = upcomingTasks,_completedTasks = completedTasks;
  

 final  List<Task> _tasks;
 List<Task> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

 final  List<Task> _todayTasks;
 List<Task> get todayTasks {
  if (_todayTasks is EqualUnmodifiableListView) return _todayTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayTasks);
}

 final  List<Task> _upcomingTasks;
 List<Task> get upcomingTasks {
  if (_upcomingTasks is EqualUnmodifiableListView) return _upcomingTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_upcomingTasks);
}

 final  List<Task> _completedTasks;
 List<Task> get completedTasks {
  if (_completedTasks is EqualUnmodifiableListView) return _completedTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedTasks);
}


/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskLoadedCopyWith<TaskLoaded> get copyWith => _$TaskLoadedCopyWithImpl<TaskLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskLoaded&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&const DeepCollectionEquality().equals(other._todayTasks, _todayTasks)&&const DeepCollectionEquality().equals(other._upcomingTasks, _upcomingTasks)&&const DeepCollectionEquality().equals(other._completedTasks, _completedTasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks),const DeepCollectionEquality().hash(_todayTasks),const DeepCollectionEquality().hash(_upcomingTasks),const DeepCollectionEquality().hash(_completedTasks));

@override
String toString() {
  return 'TaskState.loaded(tasks: $tasks, todayTasks: $todayTasks, upcomingTasks: $upcomingTasks, completedTasks: $completedTasks)';
}


}

/// @nodoc
abstract mixin class $TaskLoadedCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskLoadedCopyWith(TaskLoaded value, $Res Function(TaskLoaded) _then) = _$TaskLoadedCopyWithImpl;
@useResult
$Res call({
 List<Task> tasks, List<Task> todayTasks, List<Task> upcomingTasks, List<Task> completedTasks
});




}
/// @nodoc
class _$TaskLoadedCopyWithImpl<$Res>
    implements $TaskLoadedCopyWith<$Res> {
  _$TaskLoadedCopyWithImpl(this._self, this._then);

  final TaskLoaded _self;
  final $Res Function(TaskLoaded) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tasks = null,Object? todayTasks = null,Object? upcomingTasks = null,Object? completedTasks = null,}) {
  return _then(TaskLoaded(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,todayTasks: null == todayTasks ? _self._todayTasks : todayTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,upcomingTasks: null == upcomingTasks ? _self._upcomingTasks : upcomingTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,completedTasks: null == completedTasks ? _self._completedTasks : completedTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}


}

/// @nodoc


class TaskError implements TaskState {
  const TaskError(this.message);
  

 final  String message;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskErrorCopyWith<TaskError> get copyWith => _$TaskErrorCopyWithImpl<TaskError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TaskState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TaskErrorCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskErrorCopyWith(TaskError value, $Res Function(TaskError) _then) = _$TaskErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TaskErrorCopyWithImpl<$Res>
    implements $TaskErrorCopyWith<$Res> {
  _$TaskErrorCopyWithImpl(this._self, this._then);

  final TaskError _self;
  final $Res Function(TaskError) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TaskError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TaskAIParsing implements TaskState {
  const TaskAIParsing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskAIParsing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskState.aiParsing()';
}


}




/// @nodoc


class TaskAIParsingSuccess implements TaskState {
  const TaskAIParsingSuccess(final  List<Task> tasks): _tasks = tasks;
  

 final  List<Task> _tasks;
 List<Task> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskAIParsingSuccessCopyWith<TaskAIParsingSuccess> get copyWith => _$TaskAIParsingSuccessCopyWithImpl<TaskAIParsingSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskAIParsingSuccess&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'TaskState.aiParsingSuccess(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $TaskAIParsingSuccessCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskAIParsingSuccessCopyWith(TaskAIParsingSuccess value, $Res Function(TaskAIParsingSuccess) _then) = _$TaskAIParsingSuccessCopyWithImpl;
@useResult
$Res call({
 List<Task> tasks
});




}
/// @nodoc
class _$TaskAIParsingSuccessCopyWithImpl<$Res>
    implements $TaskAIParsingSuccessCopyWith<$Res> {
  _$TaskAIParsingSuccessCopyWithImpl(this._self, this._then);

  final TaskAIParsingSuccess _self;
  final $Res Function(TaskAIParsingSuccess) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(TaskAIParsingSuccess(
null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,
  ));
}


}

/// @nodoc


class TaskAIParsingError implements TaskState {
  const TaskAIParsingError(this.error);
  

 final  String error;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskAIParsingErrorCopyWith<TaskAIParsingError> get copyWith => _$TaskAIParsingErrorCopyWithImpl<TaskAIParsingError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskAIParsingError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'TaskState.aiParsingError(error: $error)';
}


}

/// @nodoc
abstract mixin class $TaskAIParsingErrorCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory $TaskAIParsingErrorCopyWith(TaskAIParsingError value, $Res Function(TaskAIParsingError) _then) = _$TaskAIParsingErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$TaskAIParsingErrorCopyWithImpl<$Res>
    implements $TaskAIParsingErrorCopyWith<$Res> {
  _$TaskAIParsingErrorCopyWithImpl(this._self, this._then);

  final TaskAIParsingError _self;
  final $Res Function(TaskAIParsingError) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(TaskAIParsingError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
