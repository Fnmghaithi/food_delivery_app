import 'package:flutter/material.dart';
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
    Center(
      child: Text('Favorite Page'),
    ),
    Center(
      child: Text('Account Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Foodak - Food Delivery'),
        elevation: 0,
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
        selectedItemColor: Colors.deepOrange,
      ),
    );
  }
}
