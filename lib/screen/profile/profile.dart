import 'package:artist_project/screen/profile/details.dart';
import 'package:artist_project/screen/profile/image_showcase.dart';
import 'package:artist_project/screen/profile/music_showcase.dart';
import 'package:artist_project/screen/profile/people_showcase.dart';
import 'package:artist_project/screen/profile/post_showcase.dart';
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
          SizedBox(height: 32),
          PeopleShowcaseWidget(),
          SizedBox(height: 32),
          PostShowcaseWidget(),
          SizedBox(height: 32),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            height: 184,
            decoration: BoxDecoration(
              border: Border.all(
                color: Themes.blue.shade200,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: FlatButton(
              child: Icon(
                Icons.add,
                size: 56,
                color: Themes.blue.shade200,
              ),
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
