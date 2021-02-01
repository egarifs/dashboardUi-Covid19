import 'package:dashboard_ui/screens/home_screen.dart';
import 'package:dashboard_ui/screens/screens.dart';
import 'package:flutter/material.dart';

class ButtomNavScreen extends StatefulWidget {
  @override
  _ButtomNavScreenState createState() => _ButtomNavScreenState();
}

class _ButtomNavScreenState extends State<ButtomNavScreen> {
  final List _sreens = [
    HomeScreen(),
    StatsScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _sreens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //! setelah membuat item dll ontap agar bisa bergantian
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? Colors.blue[600]
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
