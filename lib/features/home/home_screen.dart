// Karim Toson || kareemtoson1@gmail.com || Wed Jul 01 2026 16:40:42

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/home/cubit/home_cubit.dart';
import 'package:nti6/features/home/cubit/states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: _controller),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<HomeCubit>().addName(_controller.text);
                },
                child: Text('add'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeCubit>().getData();
                },
                child: Text('get'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeCubit>().deleteName();
                },
                child: Text('delete'),
              ),
            ],
          ),

          SizedBox(height: 30),

          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is LoadingState) {
                return CircularProgressIndicator();
              } else if (state is ErrorState) {
                return Text(
                  state.erroMessage,
                  style: TextStyle(color: Colors.red),
                );
              } else if (state is SuccessState) {
                return Text(state.name);
              } else {
                return SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
