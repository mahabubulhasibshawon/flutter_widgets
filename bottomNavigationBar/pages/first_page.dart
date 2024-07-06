import 'package:flutter/material.dart';
import 'package:navigation_project/pages/home.dart';
import 'package:navigation_project/pages/profile.dart';
import 'package:navigation_project/pages/settings.dart';

class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   //this keeps track of the current page to display
   int _selectedIndex = 0;

   void _navigateBottomBar(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }


  final List _pages = [
    //homepage
    HomePage(),
    //profilepage
    ProfilePage(),
    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'HOME'),
          //profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
          //settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTINGS'),
        ],
      ),
    );
  }
}
