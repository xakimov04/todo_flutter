import 'package:todo_flutter/data/services/firebase/firebase_todo_service.dart';

import '../models/todo_model.dart';

class TodoRepository {
  final FirebaseTodoService _firebaseTodoService;

  TodoRepository({required FirebaseTodoService firebaseTodoService})
      : _firebaseTodoService = firebaseTodoService;

  Stream<List<Todo>> getTodos(String uid) => _firebaseTodoService.getTodos(uid);

  void addTodo({required Todo todo}) =>
      _firebaseTodoService.addTodo(todo: todo);

  void toggleIsDone({
    required String id,
    required bool isDone,
  }) =>
      _firebaseTodoService.toggleIsDone(id: id, isDone: isDone);

  void rateTodo({required String todoId, required int rate}) =>
      _firebaseTodoService.rateTodo(id: todoId, rate: rate);

  void deleteTodo({required String todoId}) =>
      _firebaseTodoService.deleteTodo(todoId: todoId);
}
