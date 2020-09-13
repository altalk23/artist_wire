import 'package:artist_project/screen/profile/details.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.blue.shade900,
      child: Column(
        children: <Widget>[
          SizedBox(height: 84),
          DetailsWidget(),
        ],
      ),
    );
  }
}
