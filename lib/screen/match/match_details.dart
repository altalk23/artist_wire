import 'package:artist_project/screen/placeholder/image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class MatchDetailsScreen extends StatefulWidget {
  @override
  _MatchDetailsScreenState createState() => _MatchDetailsScreenState();
}

class _MatchDetailsScreenState extends State<MatchDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Themes.blue.shade900,
      child: Column(
        children: <Widget>[
          SizedBox(height: 64),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 40,
                color: Themes.blueGrey.shade400,
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.blue.shade800,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: <Widget>[
                PlaceholderImage(width: 104, height: 104, radius: 52),
                SizedBox(height: 8),
                Text(
                  "Berk Hüner",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              height: 26,
                              child: Text(
                                "Lorem",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                color: Themes.blueGrey.shade400,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            child: Container(
                              height: 26,
                              child: Text(
                                "Ipsum",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                color: Themes.blueGrey.shade400,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              height: 26,
                              child: Text(
                                "Dolor",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                color: Themes.blueGrey.shade400,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
                            child: Container(
                              height: 26,
                              child: Text(
                                "Sit",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100,
                                  fontStyle: FontStyle.italic,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                color: Themes.blueGrey.shade400,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 48,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "250",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 48,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "542",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                FlatButton(
                  onPressed: () {  },
                  child: Container(
                    width: double.infinity,
                    height: 36,
                    child: Text(
                      "Bağlantı Kur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Themes.blue.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: FlatButton(
                        onPressed: () {  },
                        child: Container(
                          height: 36,
                          child: Text(
                            "Geç",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Themes.blueGrey.shade300,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Flexible(
                      child: FlatButton(
                        onPressed: () {  },
                        child: Container(
                          height: 36,
                          child: Text(
                            "Gösterme",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Themes.blueGrey.shade700,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
