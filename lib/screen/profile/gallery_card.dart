import 'package:artist_project/screen/placeholder/image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatefulWidget {
  final String username;

  const GalleryCard({Key key, this.username}) : super(key: key);

  @override
  _GalleryCardState createState() => _GalleryCardState();
}

class _GalleryCardState extends State<GalleryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 184,
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: PlaceholderImage(),
                  ),
                  SizedBox(height: 8),
                  Flexible(
                    flex: 1,
                    child: PlaceholderImage(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: PlaceholderImage(),
                  ),
                  SizedBox(height: 8),
                  Flexible(
                    flex: 1,
                    child: PlaceholderImage(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Flexible(
              flex: 2,
              child: PlaceholderImage(),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Wrap(
          spacing: 8,
          runSpacing: 8,
          direction: Axis.horizontal,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: PlaceholderImage(),
            ),
            Flexible(
              flex: 1,
              child: PlaceholderImage(),
            ),
            Flexible(
              flex: 1,
              child: PlaceholderImage(),
            ),
            Flexible(
              flex: 1,
              child: PlaceholderImage(),
            ),
            Flexible(
              flex: 2,
              child: PlaceholderImage(),
            ),
          ],
        ),
 */

/*
child: Container(
          height: 184,
          padding: EdgeInsets.only(bottom: 16, left: 16, right: 16, top: 16),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: PlaceholderImage(),
                    ),
                    SizedBox(height: 8),
                    Flexible(
                      flex: 1,
                      child: PlaceholderImage(),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: PlaceholderImage(),
                    ),
                    SizedBox(height: 8),
                    Flexible(
                      flex: 1,
                      child: PlaceholderImage(),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                flex: 2,
                child: PlaceholderImage(),
              ),
            ],
          ),
        ),
 */
