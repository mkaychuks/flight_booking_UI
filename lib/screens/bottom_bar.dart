import 'package:flutter/material.dart';
import 'package:tutorial/screens/profile_screen.dart';
import 'package:tutorial/screens/search_screen.dart';
import 'package:tutorial/screens/ticket_screen.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // setting the current index of the bottomNav
  int _currentIndex = 0;

  // a function that handles the change in state
  void _onTap(int index) {
    setState(() {
      _currentIndex = index; // setting the _currentIndex to the index ..
    });
  }

  final List<Widget> _widgetBodyOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetBodyOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 0.0,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff526480),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
            activeIcon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            label: "Home",
            activeIcon: Icon(Icons.airplane_ticket),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Home",
            activeIcon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
