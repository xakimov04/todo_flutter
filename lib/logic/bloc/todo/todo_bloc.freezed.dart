// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTodosEventImplCopyWith<$Res> {
  factory _$$GetTodosEventImplCopyWith(
          _$GetTodosEventImpl value, $Res Function(_$GetTodosEventImpl) then) =
      __$$GetTodosEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetTodosEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosEventImpl>
    implements _$$GetTodosEventImplCopyWith<$Res> {
  __$$GetTodosEventImplCopyWithImpl(
      _$GetTodosEventImpl _value, $Res Function(_$GetTodosEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetTodosEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTodosEventImpl implements _GetTodosEvent {
  const _$GetTodosEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'TodoEvent.getTodos(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodosEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodosEventImplCopyWith<_$GetTodosEventImpl> get copyWith =>
      __$$GetTodosEventImplCopyWithImpl<_$GetTodosEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) {
    return getTodos(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) {
    return getTodos?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return getTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return getTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (getTodos != null) {
      return getTodos(this);
    }
    return orElse();
  }
}

abstract class _GetTodosEvent implements TodoEvent {
  const factory _GetTodosEvent({required final String userId}) =
      _$GetTodosEventImpl;

  String get userId;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTodosEventImplCopyWith<_$GetTodosEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTodoEventImplCopyWith<$Res> {
  factory _$$AddTodoEventImplCopyWith(
          _$AddTodoEventImpl value, $Res Function(_$AddTodoEventImpl) then) =
      __$$AddTodoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddTodoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoEventImpl>
    implements _$$AddTodoEventImplCopyWith<$Res> {
  __$$AddTodoEventImplCopyWithImpl(
      _$AddTodoEventImpl _value, $Res Function(_$AddTodoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
  }) {
    return _then(_$AddTodoEventImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$AddTodoEventImpl implements _AddTodoEvent {
  const _$AddTodoEventImpl({required this.todo});

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoEventImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoEventImplCopyWith<_$AddTodoEventImpl> get copyWith =>
      __$$AddTodoEventImplCopyWithImpl<_$AddTodoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodoEvent implements TodoEvent {
  const factory _AddTodoEvent({required final Todo todo}) = _$AddTodoEventImpl;

  Todo get todo;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTodoEventImplCopyWith<_$AddTodoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleIsDoneEventImplCopyWith<$Res> {
  factory _$$ToggleIsDoneEventImplCopyWith(_$ToggleIsDoneEventImpl value,
          $Res Function(_$ToggleIsDoneEventImpl) then) =
      __$$ToggleIsDoneEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, bool isDone});
}

/// @nodoc
class __$$ToggleIsDoneEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$ToggleIsDoneEventImpl>
    implements _$$ToggleIsDoneEventImplCopyWith<$Res> {
  __$$ToggleIsDoneEventImplCopyWithImpl(_$ToggleIsDoneEventImpl _value,
      $Res Function(_$ToggleIsDoneEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isDone = null,
  }) {
    return _then(_$ToggleIsDoneEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleIsDoneEventImpl implements _ToggleIsDoneEvent {
  const _$ToggleIsDoneEventImpl({required this.id, required this.isDone});

  @override
  final String id;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TodoEvent.toggleIsDone(id: $id, isDone: $isDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleIsDoneEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isDone);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleIsDoneEventImplCopyWith<_$ToggleIsDoneEventImpl> get copyWith =>
      __$$ToggleIsDoneEventImplCopyWithImpl<_$ToggleIsDoneEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) {
    return toggleIsDone(id, isDone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) {
    return toggleIsDone?.call(id, isDone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) {
    if (toggleIsDone != null) {
      return toggleIsDone(id, isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return toggleIsDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return toggleIsDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (toggleIsDone != null) {
      return toggleIsDone(this);
    }
    return orElse();
  }
}

abstract class _ToggleIsDoneEvent implements TodoEvent {
  const factory _ToggleIsDoneEvent(
      {required final String id,
      required final bool isDone}) = _$ToggleIsDoneEventImpl;

  String get id;
  bool get isDone;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleIsDoneEventImplCopyWith<_$ToggleIsDoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateTodoEventImplCopyWith<$Res> {
  factory _$$RateTodoEventImplCopyWith(
          _$RateTodoEventImpl value, $Res Function(_$RateTodoEventImpl) then) =
      __$$RateTodoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int rate});
}

/// @nodoc
class __$$RateTodoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$RateTodoEventImpl>
    implements _$$RateTodoEventImplCopyWith<$Res> {
  __$$RateTodoEventImplCopyWithImpl(
      _$RateTodoEventImpl _value, $Res Function(_$RateTodoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rate = null,
  }) {
    return _then(_$RateTodoEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RateTodoEventImpl implements _RateTodoEvent {
  const _$RateTodoEventImpl({required this.id, required this.rate});

  @override
  final String id;
  @override
  final int rate;

  @override
  String toString() {
    return 'TodoEvent.rateTodo(id: $id, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateTodoEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, rate);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateTodoEventImplCopyWith<_$RateTodoEventImpl> get copyWith =>
      __$$RateTodoEventImplCopyWithImpl<_$RateTodoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) {
    return rateTodo(id, rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) {
    return rateTodo?.call(id, rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) {
    if (rateTodo != null) {
      return rateTodo(id, rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return rateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return rateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (rateTodo != null) {
      return rateTodo(this);
    }
    return orElse();
  }
}

abstract class _RateTodoEvent implements TodoEvent {
  const factory _RateTodoEvent(
      {required final String id,
      required final int rate}) = _$RateTodoEventImpl;

  String get id;
  int get rate;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateTodoEventImplCopyWith<_$RateTodoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoEventImplCopyWith<$Res> {
  factory _$$DeleteTodoEventImplCopyWith(_$DeleteTodoEventImpl value,
          $Res Function(_$DeleteTodoEventImpl) then) =
      __$$DeleteTodoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String todoId});
}

/// @nodoc
class __$$DeleteTodoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodoEventImpl>
    implements _$$DeleteTodoEventImplCopyWith<$Res> {
  __$$DeleteTodoEventImplCopyWithImpl(
      _$DeleteTodoEventImpl _value, $Res Function(_$DeleteTodoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
  }) {
    return _then(_$DeleteTodoEventImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTodoEventImpl implements _DeleteTodoEvent {
  const _$DeleteTodoEventImpl({required this.todoId});

  @override
  final String todoId;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(todoId: $todoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoEventImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoEventImplCopyWith<_$DeleteTodoEventImpl> get copyWith =>
      __$$DeleteTodoEventImplCopyWithImpl<_$DeleteTodoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getTodos,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String id, bool isDone) toggleIsDone,
    required TResult Function(String id, int rate) rateTodo,
    required TResult Function(String todoId) deleteTodo,
  }) {
    return deleteTodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getTodos,
    TResult? Function(Todo todo)? addTodo,
    TResult? Function(String id, bool isDone)? toggleIsDone,
    TResult? Function(String id, int rate)? rateTodo,
    TResult? Function(String todoId)? deleteTodo,
  }) {
    return deleteTodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getTodos,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String id, bool isDone)? toggleIsDone,
    TResult Function(String id, int rate)? rateTodo,
    TResult Function(String todoId)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTodosEvent value) getTodos,
    required TResult Function(_AddTodoEvent value) addTodo,
    required TResult Function(_ToggleIsDoneEvent value) toggleIsDone,
    required TResult Function(_RateTodoEvent value) rateTodo,
    required TResult Function(_DeleteTodoEvent value) deleteTodo,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTodosEvent value)? getTodos,
    TResult? Function(_AddTodoEvent value)? addTodo,
    TResult? Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult? Function(_RateTodoEvent value)? rateTodo,
    TResult? Function(_DeleteTodoEvent value)? deleteTodo,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTodosEvent value)? getTodos,
    TResult Function(_AddTodoEvent value)? addTodo,
    TResult Function(_ToggleIsDoneEvent value)? toggleIsDone,
    TResult Function(_RateTodoEvent value)? rateTodo,
    TResult Function(_DeleteTodoEvent value)? deleteTodo,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class _DeleteTodoEvent implements TodoEvent {
  const factory _DeleteTodoEvent({required final String todoId}) =
      _$DeleteTodoEventImpl;

  String get todoId;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTodoEventImplCopyWith<_$DeleteTodoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  List<Todo>? get todos => throw _privateConstructorUsedError;
  TodoStatus get todoStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({List<Todo>? todos, TodoStatus todoStatus, String? error});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = freezed,
    Object? todoStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      todos: freezed == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      todoStatus: null == todoStatus
          ? _value.todoStatus
          : todoStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo>? todos, TodoStatus todoStatus, String? error});
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = freezed,
    Object? todoStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$TodoStateImpl(
      todos: freezed == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      todoStatus: null == todoStatus
          ? _value.todoStatus
          : todoStatus // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {final List<Todo>? todos,
      this.todoStatus = TodoStatus.initial,
      this.error})
      : _todos = todos;

  final List<Todo>? _todos;
  @override
  List<Todo>? get todos {
    final value = _todos;
    if (value == null) return null;
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final TodoStatus todoStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'TodoState(todos: $todos, todoStatus: $todoStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.todoStatus, todoStatus) ||
                other.todoStatus == todoStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), todoStatus, error);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {final List<Todo>? todos,
      final TodoStatus todoStatus,
      final String? error}) = _$TodoStateImpl;

  @override
  List<Todo>? get todos;
  @override
  TodoStatus get todoStatus;
  @override
  String? get error;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
