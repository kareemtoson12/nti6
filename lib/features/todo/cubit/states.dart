// Karim Toson || kareemtoson1@gmail.com || Fri Jun 26 2026 17:23:12

// Karim Toson || kareemtoson1@gmail.com || Fri Jun 26 2026 17:23:20

sealed class TodoSatates {
  final List<String> todos;

  TodoSatates({required this.todos});
}

class IntialState extends TodoSatates {
  IntialState({required super.todos});
}

class AddTodoState extends TodoSatates {
  AddTodoState({required super.todos});
}

class DeleteTodoState extends TodoSatates {
  DeleteTodoState({required super.todos});
}
