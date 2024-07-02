import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/food_item.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: foodItems.where((element) => element.isFavorite).isEmpty
            ? Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/empty_state.png',
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    const Text(
                      'No Favorite items yet',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                children: foodItems
                    .where((element) => element.isFavorite)
                    .map(
                      (foodItem) => FavoriteItem(
                        foodItem: foodItem,
                        onFoodItemPressed: () {
                          final foodItemIndex = foodItems.indexOf(foodItem);
                          setState(() {
                            foodItems[foodItemIndex] = foodItems[foodItemIndex]
                                .copyWith(isFavorite: false);
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
