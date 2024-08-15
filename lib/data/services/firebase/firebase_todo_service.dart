import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_flutter/data/models/todo_model.dart';

class FirebaseTodoService {
  final CollectionReference<Map<String, dynamic>> _todoCollection =
      FirebaseFirestore.instance.collection('todos');

  Stream<List<Todo>> getTodos(String uid) {
    return _todoCollection.where('uid', isEqualTo: uid).snapshots().map(
          (QuerySnapshot<Map<String, dynamic>> querySnapshot) =>
              querySnapshot.docs.map(
            (QueryDocumentSnapshot<Map<String, dynamic>> doc) {
              Map<String, dynamic> data = doc.data();
              data['id'] = doc.id;
              return Todo.fromJson(data);
            },
          ).toList(),
        );
  }

  void addTodo({required Todo todo}) {
    Map<String, dynamic> todoMap = todo.toJson();
    todoMap.remove('id');
    _todoCollection.add(todoMap);
  }

  void toggleIsDone({
    required String id,
    required bool isDone,
  }) =>
      _todoCollection.doc(id).update({'isDone': isDone});

  void deleteTodo({required String todoId}) =>
      _todoCollection.doc(todoId).delete();

  void rateTodo({required String id, required int rate}) =>
      _todoCollection.doc(id).update({'rate': rate});
}
