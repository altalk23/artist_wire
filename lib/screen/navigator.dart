import 'package:artist_project/screen/discover/discover.dart';
import 'package:artist_project/screen/match/match.dart';
import 'package:artist_project/screen/match/match_details.dart';
import 'package:artist_project/screen/profile/edit/cards.dart';
import 'package:artist_project/screen/profile/edit/edit.dart';
import 'package:artist_project/screen/profile/profile.dart';

import 'package:flutter/material.dart';

class MainNavigator extends StatefulWidget {
  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreen(),
    );
  }
}
