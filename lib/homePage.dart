import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/callaReciev.dart';
import 'package:instagram_ui/pages/person.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/videocal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigatorBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 2;
  final List<Widget> _Children = [
    Homez(),
    Search(),
    VideoCall(),
    CallRec(),
    Person()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigatorBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle), label: "Videos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Natfications"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "persion")
        ],
      ),
    );
  }
}
