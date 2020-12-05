import 'package:artist_project/screen/placeholder/image.dart';
import 'package:artist_project/screen/widgets.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final dynamic data;

  const PostCard({Key key, this.data}) : super(key: key);

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
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            ContainerImage(
              height: 136,
              fit: BoxFit.fitWidth,
              path: widget.data["image"],
            ),
          ],
        ),
      ),
    );
  }
}
