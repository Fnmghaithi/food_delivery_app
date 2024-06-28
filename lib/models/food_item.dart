class FoodItem {
  final String name;
  final String imgUrl;
  final double price;

  FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
  });
}

List<FoodItem> foodItems = [
  FoodItem(
    name: 'Beef Burger',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw7AoOufwdCsG3uwQNfEn4s2xYZZJHqRIbUA&s',
    price: 8.5,
  ),
  FoodItem(
    name: 'Chicken Burger',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_CU_ITATMhOUniSGu4EKtkVNBfHOXjeo6dA&s',
    price: 6,
  ),
  FoodItem(
    name: 'Cheese Burger',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEJiNX0GZfl21raOShpI3p-W8CkdBITCCwAQ&s',
    price: 4,
  ),
  FoodItem(
    name: 'Meat Pizza',
    imgUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROSGqzQ-DjWDiiB7PU4qpmoUM9EXwXSiHavg&s',
    price: 6.5,
  ),
  FoodItem(
    name: 'Pasta',
    imgUrl:
        'https://assets.epicurious.com/photos/5988e3458e3ab375fe3c0caf/1:1/w_3607,h_3607,c_limit/How-to-Make-Chicken-Alfredo-Pasta-hero-02082017.jpg',
    price: 5,
  ),
];
