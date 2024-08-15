import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_flutter/app_settings.dart';
import 'package:todo_flutter/data/models/todo_model.dart';
import 'package:todo_flutter/logic/bloc/todo/todo_bloc.dart';
import 'package:todo_flutter/logic/cubit/is_today/is_today_cubit.dart';
import 'package:todo_flutter/ui/screens/home/widgets/custom_row_list_tile.dart';

import '../../../../core/utils/utils.dart' show AppFunctions, DeviceScreen;
import '../../../widgets/widgets.dart' show AppTextFormField, AppZoomTapButton;

class AddTodoWidget extends StatefulWidget {
  const AddTodoWidget({super.key});

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  final AppFunctions _functions = getIt.get<AppFunctions>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _todoNameController = TextEditingController();
  DateTime _todoTime = DateTime.now();

  String get _todoName => _todoNameController.text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: DeviceScreen.h(context) / 2,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Reja qo\'shish',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            Column(
              children: [
                CustomRowListTile(
                  text: 'Nomi',
                  betweenWidth: 20,
                  child: Expanded(
                    child: Form(
                      key: _formKey,
                      child: AppTextFormField(
                        controller: _todoNameController,
                        labelText: 'Reja nomini kiriting',
                        validator: (p0) =>
                            _functions.textValidator(p0, 'todo nomi'),
                      ),
                    ),
                  ),
                ),
                CustomRowListTile(
                  text: 'Vaqti',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  shouldAddSizedBox: true,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.35,
                    height: 40,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.time,
                      initialDateTime: DateTime.now(),
                      use24hFormat: false,
                      onDateTimeChanged: (DateTime newDateTime) =>
                          _todoTime = newDateTime,
                    ),
                  ),
                ),
                CustomRowListTile(
                  text: 'Bugun',
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  child: BlocBuilder<IsTodayCubit, bool>(
                    builder: (context, state) {
                      return CupertinoSwitch(
                        value: state,
                        onChanged: (value) =>
                            context.read<IsTodayCubit>().toggleIsToday(),
                      );
                    },
                  ),
                ),
                Text(
                  "Agar siz bugunni o'chirib qo'ysangiz, vazifa ertaga deb hisoblanadi",
                  style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            AppZoomTapButton(
              buttonLabel: "Qo'shish",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  final bool isToday = context.read<IsTodayCubit>().value;
                  context.read<TodoBloc>().add(
                        TodoEvent.addTodo(
                          todo: Todo(
                            id: '',
                            rate: 0,
                            uid: _functions.uid,
                            name: _todoName,
                            isDone: false,
                            dateTime: isToday
                                ? _todoTime
                                : _todoTime.add(const Duration(days: 1)),
                            isToday: isToday,
                          ),
                        ),
                      );
                  Navigator.of(context).pop();
                  context.read<IsTodayCubit>().toInitial();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
