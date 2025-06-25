part of 'auth_bloc.dart';

sealed class AuthEvent {}

class SigninEvent extends AuthEvent{

   final String email;
   final String password;

  SigninEvent({required this.email,required this.password});
}


class LoginEvent extends AuthEvent{

 final  String email;
 final  String password;

  LoginEvent({required this.email,required this.password});
}

