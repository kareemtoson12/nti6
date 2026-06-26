import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/todo/cubit/states.dart';

class TodoCubit extends Cubit<TodoSatates> {
  TodoCubit() : super(IntialState(todos: []));

  void addTodo(String todoName) {
    final List<String> newListOftodos = state.todos;
    newListOftodos.add(todoName);
    emit(AddTodoState(todos: newListOftodos));
  }

  void deleteTodo(int index) {
    final List<String> newListOftodos = state.todos;
    newListOftodos.removeAt(index);
    emit(DeleteTodoState(todos: newListOftodos));
  }
}
