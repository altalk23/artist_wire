import 'package:artist_project/screen/discover/discover.dart';
import 'package:artist_project/screen/match/match.dart';
import 'package:artist_project/screen/match/match_details.dart';
import 'package:artist_project/screen/placeholder/screen.dart';
import 'package:artist_project/screen/profile/edit/cards.dart';
import 'package:artist_project/screen/profile/edit/edit.dart';
import 'package:artist_project/screen/profile/profile.dart';
import 'package:artist_project/themes.dart';

import 'package:flutter/material.dart';

class MainNavigator extends StatefulWidget {
  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    PlaceholderScreen(),
    ProfileScreen(),
    PlaceholderScreen(),
    DiscoverScreen(),
    PlaceholderScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF191919),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Themes.blue.shade300,
          unselectedItemColor: Themes.blueGrey.shade400,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Ara',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_stream),
              label: 'Akım',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Keşfet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ayarlar',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
