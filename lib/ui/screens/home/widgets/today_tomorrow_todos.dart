import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'todo_item.dart';
import '../../../../data/models/todo_model.dart';
import '../../../../core/utils/device_screen.dart';
import '../../../../logic/bloc/todo/todo_bloc.dart';

class TodayTomorrowTodos extends StatelessWidget {
  final bool isTomorrow;
  const TodayTomorrowTodos({super.key, required this.isTomorrow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isTomorrow ? 'Ertaga' : "Bugun",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              if (state.todoStatus == TodoStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.black),
                );
              } else if (state.todoStatus == TodoStatus.error) {
                return const Center(child: Text('error'));
              } else if (state.todoStatus == TodoStatus.loaded) {
                final List<Todo> todos =
                    _getTodos(allTodos: state.todos, isTomorrow: isTomorrow);
                return todos.isNotEmpty
                    ? Column(
                        children: List.generate(
                          todos.length,
                          (index) => TodoItem(todo: todos[index]),
                        ),
                      )
                    : SizedBox(
                        height:
                            DeviceScreen.h(context) / 2 - kToolbarHeight * 2,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.asset(
                                'assets/lottie/duck.json',
                                height: DeviceScreen.w(context) / 3,
                                width: DeviceScreen.w(context) / 3,
                              ),
                              SizedBox(
                                width: DeviceScreen.w(context) / 1.2,
                                child: Text(
                                  '${isTomorrow ? 'Ertangi' : 'Bugungi'} kun uchun rejalashtirilgan hech qanday todo mavjud emas',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }

  List<Todo> _getTodos({
    required List<Todo>? allTodos,
    required bool isTomorrow,
  }) {
    List<Todo> todos = [];

    if (allTodos == null) return todos;

    DateTime now = DateTime.now();
    DateTime startOfToday = DateTime(
        now.year, now.month, isTomorrow ? now.day + 1 : now.day, 0, 0, 0);
    DateTime endOfToday = DateTime(
        now.year, now.month, isTomorrow ? now.day + 1 : now.day, 23, 59, 59);

    for (var todo in allTodos) {
      if (todo.dateTime.isAfter(startOfToday) &&
          todo.dateTime.isBefore(endOfToday)) {
        todos.add(todo);
      }
    }
    return todos;
  }
}
