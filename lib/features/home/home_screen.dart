// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 18:36:56

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/login/cubit/login_cubit.dart';
import 'package:nti6/features/login/cubit/states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginStates>(
        builder: (context, state) {
          if (state is LoginGetSuccessState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(state.person.name)),
                Text(state.person.age.toString()),
              ],
            );
          } else if (state is LoginErrorState) {
            return Text(state.errorMessage);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
