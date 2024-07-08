import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/models/food_item.dart';

class FoodGridItem extends StatefulWidget {
  final int foodItemIndex;
  const FoodGridItem({
    super.key,
    required this.foodItemIndex,
  });

  @override
  State<FoodGridItem> createState() => _FoodGridItemState();
}

class _FoodGridItemState extends State<FoodGridItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.network(
                        foodItems[widget.foodItemIndex].imgUrl,
                        // height: size.height * 0.1,
                        height: constraints.maxHeight * 0.5,
                        // fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: constraints.maxHeight * 0.14,
                        child: FittedBox(
                          child: Text(
                            foodItems[widget.foodItemIndex].name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        height: constraints.maxHeight * 0.12,
                        child: FittedBox(
                          child: Text(
                            '${foodItems[widget.foodItemIndex].price}\$',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).primaryColor,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      height: constraints.maxHeight * 0.17,
                      width: constraints.maxWidth * 0.17,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            foodItems[widget.foodItemIndex] =
                                foodItems[widget.foodItemIndex].copyWith(
                              isFavorite:
                                  !foodItems[widget.foodItemIndex].isFavorite,
                            );
                          });
                        },
                        child: Icon(
                          foodItems[widget.foodItemIndex].isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
