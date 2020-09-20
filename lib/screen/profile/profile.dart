import 'package:artist_project/screen/profile/details.dart';
import 'package:artist_project/screen/profile/image_showcase.dart';
import 'package:artist_project/screen/profile/music_showcase.dart';
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
      child: ListView(
        children: <Widget>[
          SizedBox(height: 64),
          DetailsWidget(),
          SizedBox(height: 32),
          MusicShowcaseWidget(),
          SizedBox(height: 32),
          ImageShowcaseWidget(),
        ],
      ),
    );
  }
}
