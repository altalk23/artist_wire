import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class MusicShowcaseWidget extends StatefulWidget {
  @override
  _MusicShowcaseWidgetState createState() => _MusicShowcaseWidgetState();
}

class _MusicShowcaseWidgetState extends State<MusicShowcaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Card(
        color: Themes.blue.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: EdgeInsets.only(bottom: 32, left: 24, right: 24, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 104,
                    width: 104,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        alignment: FractionalOffset.center,
                        image: NetworkImage(
                          "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Mehmet Karahan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Beyaz Gül",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "20 Temmuz",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "2020",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mode_comment,
                      color: Colors.white,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 32,
                    ),
                    onPressed: () {},
                  ),
                ],
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
