import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_flutter/data/services/services.dart';
import 'package:todo_flutter/logic/cubit/is_today/is_today_cubit.dart';

import 'firebase_options.dart';
import 'logic/bloc/blocs.dart';
import 'core/utils/app_functions.dart';
import 'data/repositories/repositories.dart';

final GetIt getIt = GetIt.I;

class AppSettings {
  static Future<void> setUp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    Bloc.observer = const TodoFlutterObserver();
  }

  static void dependencySetUp() {
    getIt.registerLazySingleton(() => AppFunctions());

    final FirebaseAuthService firebaseAuthService = FirebaseAuthService();
    final FirebaseTodoService firebaseTodoService = FirebaseTodoService();

    /// registering repositories
    getIt.registerLazySingleton(
      () => AuthRepository(firebaseAuthService: firebaseAuthService),
    );
    getIt.registerLazySingleton(
      () => TodoRepository(firebaseTodoService: firebaseTodoService),
    );

    /// registering blocs && cubir
    getIt.registerLazySingleton(
      () => AuthBloc(authRepository: getIt.get<AuthRepository>()),
    );
    getIt.registerLazySingleton(
      () => TodoBloc(todoRepository: getIt.get<TodoRepository>()),
    );

    getIt.registerLazySingleton(() => IsTodayCubit());
  }
}
