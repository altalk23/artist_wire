import 'package:artist_project/screen/placeholder_image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class ImageShowcaseWidget extends StatefulWidget {
  @override
  _ImageShowcaseWidgetState createState() => _ImageShowcaseWidgetState();
}

class _ImageShowcaseWidgetState extends State<ImageShowcaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Card(
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
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
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
