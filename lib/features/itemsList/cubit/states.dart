import 'package:nti6/features/itemsList/model/item_model.dart';

abstract class ItemsStates {
  final List<ItemModel> itemsData;

  ItemsStates({required this.itemsData});
}

class IntialState extends ItemsStates {
  IntialState({required super.itemsData});
}

class ToggleState extends ItemsStates {
  ToggleState({required super.itemsData});
}
