import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    on<LoginUserEvent>(_loginUser);
    on<RegisterUserEvent>(_onRegisterUser);
    on<ResetPasswordEvent>(_onResetPassword);
    on<LogoutEvent>(_onLogoutUser);
    on<WatchAuthEvent>(_onWatchAuth);
  }

  void _loginUser(LoginUserEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));
    try {
      await _authRepository.login(email: event.email, password: event.password);
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onRegisterUser(RegisterUserEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      await _authRepository.register(
        email: event.email,
        password: event.password,
      );
      await _authRepository.setUserName(name: event.name);
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onResetPassword(ResetPasswordEvent event, Emitter<AuthState> emit) =>
      _authRepository.resetPassword(email: event.email);

  void _onLogoutUser(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      await _authRepository.logout();
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  void _onWatchAuth(
    WatchAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await emit.forEach(
      _authRepository.watchAuth(),
      onData: (user) {
        return state.copyWith(
          user: user,
          authStatus: user == null
              ? AuthStatus.unauthenticated
              : AuthStatus.authenticated,
        );
      },
    );
  }
}
