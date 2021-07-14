import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:my_talok/core/auth/login/service/login_service.dart';
import 'package:my_talok/core/auth/login/models/form_model/form_model.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginservice) : super(LoginInitial());
  final LoginService _loginservice;
  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginUsernameChanged) {
      yield _mapUsernameChangedToState(event, state);
    } else if (event is LoginPasswordChanged) {
      yield _mapPasswordChangedToState(event, state);
    } else if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event, state);
    }
  }

  LoginState _mapUsernameChangedToState(
    LoginUsernameChanged event,
    LoginState state,
  ) {
    final username = Username.dirty(event.username);
    return state.copyWith(
      username: username,
      status: Formz.validate([state.password, username]),
    );
  }

  LoginState _mapPasswordChangedToState(
    LoginPasswordChanged event,
    LoginState state,
  ) {
    final password = Password.dirty(event.password);
    return state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),
    );
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    try {
      final login =
          await _loginservice.sign(state.username.value, state.password.value);
      final _login = json.decode(login);
      if (_login['data'] != null) {
        print('login succes');
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } else {
        print('login gagal');
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    } on Exception catch (_) {
      yield state.copyWith(status: FormzStatus.submissionFailure);
    }
  }
}
