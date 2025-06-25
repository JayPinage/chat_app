import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chart_app/Repository/repo.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repo;
  AuthBloc(this.repo) : super(AuthInitial()) {
    on<SigninEvent>(_signinEvent);
    on<LoginEvent>(_loginEvent);
  }

  FutureOr<void> _signinEvent(
    SigninEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoadingState());
    try {
      await repo.signup(event.email, event.password);

      emit(AuthSuccessState());
    } catch (e) {
      emit(AuthFailureState());
    }
  }

  FutureOr<void> _loginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());

    try {
      await repo.login(event.email, event.password);
    } catch (e) {
      emit(AuthFailureState());
    }
  }
}
