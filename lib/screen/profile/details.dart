import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  DetailsWidget({key}) : super(key: key);

  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double width = MediaQuery.of(context).size.width - 128;
    return ClipRect(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                height: 144,
                decoration: BoxDecoration(
                  color: Themes.blue.shade400,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(72),
                    bottomRight: Radius.circular(72),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 4,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(width: 12),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Mehmet Karahan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 10,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Rock, Alternative Rock",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        color: Themes.blue.shade400,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 4,
                            blurRadius: 4,
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          alignment: FractionalOffset.center,
                          image: NetworkImage(
                            "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(48),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
            ),
            Container(
              width: 128,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 11,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "340",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Connections",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 11,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "120",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 26,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "İstanbul",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "Beşiktaş",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
