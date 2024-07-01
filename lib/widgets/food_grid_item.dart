import 'package:flutter/material.dart';
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  foodItems[widget.foodItemIndex].imgUrl,
                  height: 100,
                  // fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Text(
                  foodItems[widget.foodItemIndex].name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${foodItems[widget.foodItemIndex].price}\$',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange,
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
                height: 30,
                width: 30,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      foodItems[widget.foodItemIndex] =
                          foodItems[widget.foodItemIndex].copyWith(
                        isFavorite: !foodItems[widget.foodItemIndex].isFavorite,
                      );
                    });
                  },
                  child: Icon(
                    foodItems[widget.foodItemIndex].isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
