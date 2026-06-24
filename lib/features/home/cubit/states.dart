abstract class HomeStates {
  final String name;

  HomeStates({required this.name});
}

class HomeIntial extends HomeStates {
  HomeIntial({required super.name});
}

class ChangeName extends HomeStates {
  ChangeName({required super.name});
}

class ItemData {
  final String name;
  final bool isFav;

  ItemData({required this.name, required this.isFav});
}
