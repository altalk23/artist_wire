import 'package:artist_project/dummydata.dart';
import 'package:artist_project/inherited_username.dart';
import 'package:artist_project/screen/profile/details.dart';
import 'package:artist_project/screen/profile/gallery_card.dart';
import 'package:artist_project/screen/profile/music_card.dart';
import 'package:artist_project/screen/profile/people_card.dart';
import 'package:artist_project/screen/profile/post_card.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    String username = InheritedUsername.of(context).username;
    return Container(
      color: Themes.blue.shade900,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 32),
          DetailsWidget(data: cloudData[username]["profile"]["details"]),
          MusicCard(data: cloudData[username]["profile"]["music"]),
          GalleryCard(data: cloudData[username]["profile"]["gallery"]),
          PeopleCard(data: cloudData[username]["profile"]["people"]),
          PostCard(data: cloudData[username]["profile"]["post"]),
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
