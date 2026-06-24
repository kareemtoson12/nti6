import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/itemsList/cubit/states.dart';
import 'package:nti6/features/itemsList/model/item_model.dart';

class ItemsCubit extends Cubit<ItemsStates> {
  ItemsCubit()
    : super(
        IntialState(
          itemsData: [
            ItemModel(title: 'Monitor', isFav: false),
            ItemModel(title: 'Keyboard', isFav: false),
            ItemModel(title: 'Mouse', isFav: false),
            ItemModel(title: 'Speaker', isFav: false),
          ],
        ),
      );

  void toggleFav(int index) {
    final List<ItemModel> newList = state.itemsData;
    newList[index] = ItemModel(
      title: newList[index].title,
      isFav: !newList[index].isFav,
    );

    emit(ToggleState(itemsData: newList));
  }
}
