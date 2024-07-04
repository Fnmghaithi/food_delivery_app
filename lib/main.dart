import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_navbar_screen.dart';
import 'package:food_delivery/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        dividerTheme: const DividerThemeData(
          thickness: 1,
          indent: 24,
          endIndent: 24,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.deepOrange,
        ),
        fontFamily: 'Open Sans',
      ),
      home: const BottomNavbarScreen(),
    );
  }
}
