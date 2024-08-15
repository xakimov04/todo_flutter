part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getTodos({required String userId}) = _GetTodosEvent;

  const factory TodoEvent.addTodo({required Todo todo}) = _AddTodoEvent;

  const factory TodoEvent.toggleIsDone({
    required String id,
    required bool isDone,
  }) = _ToggleIsDoneEvent;
  
  const factory TodoEvent.rateTodo({required String id, required int rate}) = _RateTodoEvent;

  const factory TodoEvent.deleteTodo({required String todoId}) =
      _DeleteTodoEvent;
}
