import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/counter/cubit/counter_cubit.dart';
import 'package:nti6/features/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('counter from class');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
              );
            },
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              final myCubit = context.read<CounterCubit>();
              return Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      myCubit.increament();
                      print('counter form function');
                    },
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      myCubit.decrease();
                      print('counter form function');
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
