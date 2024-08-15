import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/todo_model.dart';
import '../../../../logic/bloc/todo/todo_bloc.dart';
import '../../../../core/utils/extensions.dart';
import 'home_widgets.dart' show DeleteTodoDialog, RateTodoWidget;

class TodoItem extends StatefulWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late bool _isTodaysTodo;

  @override
  void initState() {
    super.initState();
    _isTodaysTodo = _isTomorrowTodo(todo: widget.todo);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (context) => DeleteTodoDialog(todo: widget.todo),
        );
      },
      onTap: widget.todo.isDone
          ? () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                builder: (context) => RateTodoWidget(todo: widget.todo),
              );
            }
          : null,
      child: Row(
        children: [
          _isTodaysTodo
              ? Container(
                  height: 10,
                  width: 10,
                  margin: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                )
              : Checkbox(
                  activeColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: widget.todo.isDone,
                  onChanged: (value) {
                    context.read<TodoBloc>().add(
                          TodoEvent.toggleIsDone(
                            id: widget.todo.id,
                            isDone: !widget.todo.isDone,
                          ),
                        );
                  },
                ),
          15.w(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.todo.name,
                  style: TextStyle(
                    fontSize: 16,
                    decoration:
                        widget.todo.isDone ? TextDecoration.lineThrough : null,
                    decorationThickness: 1.5,
                  ),
                ),
                Text(
                  DateFormat('EEEE, HH:mm').format(widget.todo.dateTime),
                  style: TextStyle(
                    fontSize: 16,
                    decoration:
                        widget.todo.isDone ? TextDecoration.lineThrough : null,
                    decorationThickness: 1.5,
                  ),
                ),
              ],
            ),
          ),
          if (widget.todo.rate != 0)
            Text(
              'Baho: ${widget.todo.rate}',
              style:
                  TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.5)),
            )
        ],
      ),
    );
  }

  bool _isTomorrowTodo({required Todo todo}) {
    DateTime now = DateTime.now();
    DateTime startOfToday = DateTime(now.year, now.month, now.day + 1, 0, 0, 0);
    DateTime endOfToday =
        DateTime(now.year, now.month, now.day + 1, 23, 59, 59);

    if (todo.dateTime.isAfter(startOfToday) &&
        todo.dateTime.isBefore(endOfToday)) {
      return true;
    }
    return false;
  }
}
