abstract class CounterState {
  final int counter;
  CounterState({required this.counter});
}

class IntialState extends CounterState {
  IntialState({required super.counter});
}

class CounterIncreamnet extends CounterState {
  CounterIncreamnet({required super.counter});
}

class CounterDecreament extends CounterState {
  CounterDecreament({required super.counter});
}
