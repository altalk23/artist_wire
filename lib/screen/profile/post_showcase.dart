import 'package:artist_project/screen/placeholder_image.dart';
import 'package:flutter/material.dart';

class PostShowcaseWidget extends StatefulWidget {
  @override
  _PostShowcaseWidgetState createState() => _PostShowcaseWidgetState();
}

class _PostShowcaseWidgetState extends State<PostShowcaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Card(
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
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
