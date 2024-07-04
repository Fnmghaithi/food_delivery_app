import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItem foodItem;
  final void Function()? onFoodItemPressed;
  const FavoriteItem({
    super.key,
    required this.foodItem,
    required this.onFoodItemPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              foodItem.imgUrl,
              height: 80,
              width: 100,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    '${foodItem.price} \$',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ),
            // const Spacer(),
            IconButton(
              splashRadius: 24.0,
              onPressed: onFoodItemPressed,
              icon: const Icon(
                Icons.favorite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
