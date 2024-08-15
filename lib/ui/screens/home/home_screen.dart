import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_flutter/app_settings.dart';

import '../../../core/utils/utils.dart';
import '../../../logic/bloc/todo/todo_bloc.dart';
import '../../../logic/cubit/is_today/is_today_cubit.dart';
import 'widgets/home_widgets.dart'
    show LogoutWidget, TodayTomorrowTodos, AddTodoWidget;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AppFunctions _functions = getIt.get<AppFunctions>();

  @override
  void initState() {
    super.initState();
    context.read<TodoBloc>().add(TodoEvent.getTodos(userId: _functions.uid));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.grey,
        title: Text('Salom, ${_functions.userName}'),
        actions: const [
          LogoutWidget(),
        ],
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        bloc: context.read<TodoBloc>()
          ..add(TodoEvent.getTodos(userId: _functions.uid)),
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            children: [
              const TodayTomorrowTodos(isTomorrow: false),
              20.h(),
              const TodayTomorrowTodos(isTomorrow: true),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (context) => BlocProvider.value(
              value: getIt.get<IsTodayCubit>(),
              child: const AddTodoWidget(),
            ),
          );
        },
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
