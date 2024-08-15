import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:todo_flutter/data/models/todo_model.dart';
import 'package:todo_flutter/data/repositories/todo_repository.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository;

  TodoBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const TodoState()) {
    on<_GetTodosEvent>(_onGetTodos);
    on<_AddTodoEvent>(_onAddTodo);
    on<_ToggleIsDoneEvent>(_onToggleIsDone);
    on<_RateTodoEvent>(_onRateTodo);
    on<_DeleteTodoEvent>(_onDeleteTodo);
  }

  void _onGetTodos(
    _GetTodosEvent event,
    Emitter<TodoState> emit,
  ) async {
    await emit.forEach(
      _todoRepository.getTodos(event.userId),
      onData: (data) =>
          state.copyWith(todos: data, todoStatus: TodoStatus.loaded),
    );
  }

  void _onAddTodo(
    _AddTodoEvent event,
    Emitter<TodoState> emit,
  ) =>
      _todoRepository.addTodo(todo: event.todo);

  void _onToggleIsDone(
    _ToggleIsDoneEvent event,
    Emitter<TodoState> emit,
  ) =>
      _todoRepository.toggleIsDone(id: event.id, isDone: event.isDone);

  void _onRateTodo(
    _RateTodoEvent event,
    Emitter<TodoState> emit,
  ) =>
      _todoRepository.rateTodo(todoId: event.id, rate: event.rate);

  void _onDeleteTodo(
    _DeleteTodoEvent event,
    Emitter<TodoState> emit,
  ) =>
      _todoRepository.deleteTodo(todoId: event.todoId);
}
