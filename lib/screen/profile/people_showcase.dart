import 'package:artist_project/screen/placeholder_image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class PeopleShowcaseWidget extends StatefulWidget {
  @override
  _PeopleShowcaseWidgetState createState() => _PeopleShowcaseWidgetState();
}

class _PeopleShowcaseWidgetState extends State<PeopleShowcaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Container(
          padding: EdgeInsets.only(bottom: 8, left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SinglePeopleShowcaseWidget(),
              SinglePeopleShowcaseWidget(),
              SinglePeopleShowcaseWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class SinglePeopleShowcaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Themes.blueGrey.shade700,
        border: Border.all(color: Themes.blue.shade50)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: <Widget>[
            PlaceholderImage(width: 90, height: 105),
            SizedBox(height: 4,),
            Text(
              "GGGGGGGG",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "3456 Fans",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 10,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
