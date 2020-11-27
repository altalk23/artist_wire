import 'package:artist_project/screen/placeholder/image.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String username;

  const PostCard({Key key, this.username}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Text(
              "Gönderilerin",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            PlaceholderImage(height: 136, fit: BoxFit.fitWidth,),
          ],
        ),
      ),
    );
  }
}
