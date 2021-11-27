import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
import 'package:fooderlich/card2.dart';

import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _screens = const [
    Card1(),
    Card2(),
    Card3(),
  ];

  int _screenIndex = 0;

  void _changeScreen(int i) {
    setState(() {
      _screenIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: _screens[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: (val) {
          _changeScreen(val);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: '',
            tooltip: '',
          ),
        ],
      ),
    );
  }
}
