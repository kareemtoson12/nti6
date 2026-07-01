// Karim Toson || kareemtoson1@gmail.com || Wed Jul 01 2026 16:47:42

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/core/data_source/hive_data_source.dart';
import 'package:nti6/features/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeIntialState());
  HiveDataSource hiveDataSource = HiveDataSource();

  Future<void> addName(String newName) async {
    emit(LoadingState());
    try {
      await hiveDataSource.addName(newName);
      emit(SuccessState(name: ''));
    } catch (e) {
      emit(ErrorState(erroMessage: e.toString()));
    }
  }

  void getData() {
    emit(LoadingState());

    try {
      final name = hiveDataSource.getData();
      emit(SuccessState(name: name));
    } catch (e) {
      emit(ErrorState(erroMessage: e.toString()));
    }
  }

  Future<void> deleteName() async {
    emit(LoadingState());
    try {
      await hiveDataSource.deleteName();
      emit(SuccessState(name: ''));
    } catch (e) {
      emit(ErrorState(erroMessage: e.toString()));
    }
  }
}
