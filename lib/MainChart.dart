import 'package:flutter/material.dart';
import 'package:posttest7_125_lidya/Cart.dart';
import 'package:posttest7_125_lidya/Favorite.dart';
import 'package:posttest7_125_lidya/Home.dart';
import 'package:posttest7_125_lidya/Profile.dart';
import 'LandingPage.dart';
import 'Cart.dart';
import 'Favorite.dart';
import 'Home.dart';
import 'Profile.dart';

class MainChart extends StatefulWidget {
  const MainChart({Key? key}) : super(key: key);

  @override
  State<MainChart> createState() => _MainPageState();
}

class _MainPageState extends State<MainChart> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Cart(),
    Favorite(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xffa85cf9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
            backgroundColor: Color(0xffa85cf9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor: Color(0xffa85cf9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xffa85cf9),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
