import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app.dart';
import 'app_settings.dart';
import 'logic/bloc/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppSettings.setUp();
  AppSettings.dependencySetUp();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt.get<AuthBloc>()),
        BlocProvider.value(value: getIt.get<TodoBloc>()),
      ],
      child: const App(),
    ),
  );
}
