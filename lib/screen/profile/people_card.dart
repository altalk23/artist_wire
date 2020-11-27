import 'package:artist_project/dummydata.dart';
import 'package:artist_project/screen/placeholder/image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class PeopleCard extends StatefulWidget {
  final dynamic data;

  const PeopleCard({Key key, this.data}) : super(key: key);

  @override
  _PeopleCardState createState() => _PeopleCardState();
}

class _PeopleCardState extends State<PeopleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SinglePeopleShowcaseWidget(username: widget.data[0]),
            SinglePeopleShowcaseWidget(username: widget.data[1]),
            SinglePeopleShowcaseWidget(username: widget.data[2]),
          ],
        ),
      ),
    );
  }
}

class SinglePeopleShowcaseWidget extends StatelessWidget {
  final String username;

  const SinglePeopleShowcaseWidget({Key key, this.username}) : super(key: key);

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
              cloudData[username]["profile"]["details"]["name"],
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              cloudData[username]["profile"]["details"]["followerCount"] + " Followers",
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
