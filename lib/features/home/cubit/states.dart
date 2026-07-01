// Karim Toson || kareemtoson1@gmail.com || Wed Jul 01 2026 16:47:26

sealed class HomeState {}

class HomeIntialState extends HomeState {}

class LoadingState extends HomeState {}

class SuccessState extends HomeState {
  final String name;

  SuccessState({required this.name});
}

class ErrorState extends HomeState {
  final String erroMessage;
  ErrorState({required this.erroMessage});
}
