import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(IntialState(counter: 0));

  void increament() {
    emit(CounterIncreamnet(counter: state.counter + 1));
  }

  void decrease() {
    emit(CounterDecreament(counter: state.counter - 1));
  }
}
