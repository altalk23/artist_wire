import 'package:artist_project/screen/placeholder_image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class MatchScreen extends StatefulWidget {
  @override
  _MatchScreenState createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Themes.blue.shade900,
      child: Column(
        children: <Widget>[
          SizedBox(height: 64),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 40,
                color: Themes.blueGrey.shade400,
                onPressed: () {  },
              ),
              Text(
                'Eşleşmeler',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MatchedPeopleWidget(name: "Ayşe Baldo",),
                MatchedPeopleWidget(name: "Berk Hüner",),
                MatchedPeopleWidget(name: "Erhan Çıray",),
              ],
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class MatchedPeopleWidget extends StatefulWidget {
  final String name;

  const MatchedPeopleWidget({Key key, this.name}) : super(key: key);
  @override
  _MatchedPeopleWidgetState createState() => _MatchedPeopleWidgetState();
}

class _MatchedPeopleWidgetState extends State<MatchedPeopleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Themes.blue.shade800,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 12,),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              children: <Widget>[
                PlaceholderImage(width: 96, height: 96, radius: 48,),
                SizedBox(height: 4,),
                Text(
                  widget.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8,),
          Flexible(
            fit: FlexFit.loose,
            child: Column(
              children: <Widget>[
                SizedBox(height: 12,),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        height: 20,
                        child: Text(
                          "Lorem",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
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
                    SizedBox(width: 12,),
                    Flexible(
                      child: Container(
                        height: 20,
                        child: Text(
                          "Ipsum",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
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
                SizedBox(height: 16,),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        height: 20,
                        child: Text(
                          "Dolor",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
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
                    SizedBox(width: 12,),
                    Flexible(
                      child: Container(
                        height: 20,
                        child: Text(
                          "Sit",
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10,
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
                SizedBox(height: 12,),
              ],
            ),
          ),
          SizedBox(width: 12,),
        ],
      ),
    );
  }
}
