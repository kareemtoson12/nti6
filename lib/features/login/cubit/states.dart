// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 16:55:53

import 'package:nti6/features/login/models/person_model.dart';

sealed class LoginStates {}

class LoginIntialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSaveSuccessState extends LoginStates {}

class LoginGetSuccessState extends LoginStates {
  final PersonModel person;

  LoginGetSuccessState({required this.person});
}

class LoginErrorState extends LoginStates {
  final String errorMessage;

  LoginErrorState({required this.errorMessage});
}
