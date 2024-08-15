import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../logic/bloc/auth/auth_bloc.dart';
import '../ui/screens/home/home_screen.dart';
import '../ui/screens/auth/login_screen.dart';
import '../ui/screens/splash/splash_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.watchAuth());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.black.withOpacity(0.1),
          selectionHandleColor: Colors.black,
        ),
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      home: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return BlocSelector<AuthBloc, AuthState, User?>(
              selector: (state) => state.user,
              builder: (context, user) {
                return user == null ? const LoginScreen() : const HomeScreen();
              },
            );
          }
        },
      ),
    );
  }
}
