import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeIntial(name: ''));

  void changeName(String newName) {
    emit(ChangeName(name: newName));
  }
}
