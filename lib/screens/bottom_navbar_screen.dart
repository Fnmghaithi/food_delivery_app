import 'package:flutter/material.dart';
import 'package:food_delivery/screens/account_page.dart';
import 'package:food_delivery/screens/favorites_page.dart';
import 'package:food_delivery/screens/home_page.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int bottomNavbarIndex = 0;

  void onSelectedNavbarTap(int index) {
    setState(() {
      bottomNavbarIndex = index;
    });
  }

  List<Widget> bodyOptions = const [
    HomePage(),
    FavoritesPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foodak - Food Delivery'),
      ),
      drawer: const Drawer(),
      body: bodyOptions[bottomNavbarIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavbarIndex,
        onTap: onSelectedNavbarTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
