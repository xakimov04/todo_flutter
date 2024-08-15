part of 'todo_bloc.dart';

enum TodoStatus { initial, loading, loaded, error }

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    List<Todo>? todos,
    @Default(TodoStatus.initial) TodoStatus todoStatus,
    String? error,
  }) = _TodoState;
}
