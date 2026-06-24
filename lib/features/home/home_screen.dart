import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/home/cubit/home_cubit.dart';
import 'package:nti6/features/home/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home')),
      body: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          final myCubit = context.read<HomeCubit>();
          return Column(
            children: [
              Center(
                child: TextField(
                  onChanged: (value) {
                    myCubit.changeName(value);
                  },
                ),
              ),
              Text(state.name, style: TextStyle(fontSize: 30)),
            ],
          );
        },
      ),
    );
  }
}
