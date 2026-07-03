// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 16:29:21

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/core/validators/login_validator.dart';
import 'package:nti6/features/home/home_screen.dart';
import 'package:nti6/features/login/cubit/login_cubit.dart';
import 'package:nti6/features/login/cubit/states.dart';
import 'package:nti6/features/login/models/person_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController ageController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    ageController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myCubit = context.read<LoginCubit>();
    return Scaffold(
      body: BlocListener<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is LoginSaveSuccessState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: HomeScreen(),
                ),
              ),
            );
          }
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  controller: nameController,
                  validator: LoginValidator.validateName,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Age'),
                  controller: ageController,
                  validator: LoginValidator.validateAge,
                ),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      myCubit.saveData(
                        PersonModel(
                          name: nameController.text,
                          age: int.parse(ageController.text),
                        ),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
