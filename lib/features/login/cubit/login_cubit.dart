// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 16:56:08

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/core/data_source/hive_data_source.dart';
import 'package:nti6/features/login/cubit/states.dart';
import 'package:nti6/features/login/models/person_model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginIntialState());
  final HiveDataSource _hiveDataSource = HiveDataSource();

  Future<void> saveData(PersonModel person) async {
    emit(LoginLoadingState());

    try {
      await _hiveDataSource.saveData(person);
      emit(LoginSaveSuccessState());
    } catch (e) {
      emit(LoginErrorState(errorMessage: e.toString()));
    }
  }

  void getData() {
    emit(LoginLoadingState());
    try {
      final PersonModel person = _hiveDataSource.getData();
      emit(LoginGetSuccessState(person: person));
    } catch (e) {
      emit(LoginErrorState(errorMessage: e.toString()));
    }
  }
}
