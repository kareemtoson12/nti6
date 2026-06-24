import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti6/features/itemsList/cubit/items_cubit.dart';
import 'package:nti6/features/itemsList/cubit/states.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemsCubit, ItemsStates>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.itemsData.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(state.itemsData[index].title),
                  IconButton(
                    onPressed: () {
                      context.read<ItemsCubit>().toggleFav(index);
                    },
                    icon: state.itemsData[index].isFav
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
