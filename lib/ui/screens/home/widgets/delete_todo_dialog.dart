import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/todo_model.dart';
import '../../../../logic/bloc/todo/todo_bloc.dart';

class DeleteTodoDialog extends StatelessWidget {
  final Todo todo;

  const DeleteTodoDialog({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Siz haqiqatdan ham "${todo.name}" nomli eslatmangizni o\'chirmoqchimisiz?',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(
              Colors.black.withOpacity(0.1),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Ortga', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStatePropertyAll(
              Colors.black.withOpacity(0.1),
            ),
          ),
          onPressed: () {
            context.read<TodoBloc>().add(TodoEvent.deleteTodo(todoId: todo.id));
            Navigator.of(context).pop();
          },
          child: const Text(
            'Ha!',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
