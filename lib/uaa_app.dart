import 'package:flutter/material.dart';
import 'package:uaaapp/main_screen.dart';
import 'package:uaaapp/lessons.dart';
import 'package:uaaapp/map.dart';
import 'package:uaaapp/teachers_screen.dart';
import 'package:uaaapp/profile.dart';

class Uaapp extends StatefulWidget {
  const Uaapp({Key? key}) : super(key: key);

  @override
  State<Uaapp> createState() {
    return _UaappState();
  }
}

class _UaappState extends State<Uaapp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MainScreen(),
    const Lessons(),
    const Map(),
    TeachersScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 24, 40),
        body: Center(
          child: _pages[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: const Color.fromARGB(255, 5, 24, 40),
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: const Color.fromARGB(255, 5, 24, 40),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Lessons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Teachers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
