// Karim Toson || kareemtoson1@gmail.com || Fri Jun 26 2026 16:34:58

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/todo/cubit/states.dart';
import 'package:nti6/features/todo/cubit/todo_cubit.dart';
import 'package:nti6/features/todo/widgets/todo_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late TextEditingController todoController;

  @override
  void initState() {
    todoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<TodoCubit, TodoSatates>(
          listener: (context, state) {
            if (state is AddTodoState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Todo added successfully'),
                  backgroundColor: Colors.green,
                ),
              );
            }

            if (state is DeleteTodoState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Todo delete successfully'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<TodoCubit, TodoSatates>(
              builder: (context, state) {
                final myCubit = context.read<TodoCubit>();
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.todos.length,
                        itemBuilder: (context, index) {
                          return TodoWidget(
                            text: state.todos[index],
                            onDelete: () {
                              myCubit.deleteTodo(index);
                            },
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: todoController,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.withValues(alpha: 0.4),
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            myCubit.addTodo(todoController.text);
                            todoController.clear();
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(50, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: Text('Add'),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
