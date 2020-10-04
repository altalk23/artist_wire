import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class CardEditScreen extends StatefulWidget {
  @override
  _CardEditScreenState createState() => _CardEditScreenState();
}

class _CardEditScreenState extends State<CardEditScreen> {
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
                onPressed: () {},
              ),
              Text(
                'Kartlar',
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
            child: ListView(
              children: <Widget>[
                OneCard(
                  text: "Lorem",
                  selected: true,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Ipsum",
                  selected: false,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Dolor",
                  selected: false,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Sit",
                  selected: false,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Amet",
                  selected: true,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Consectetur",
                  selected: true,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Adipiscing",
                  selected: false,
                ),
                SizedBox(height: 8),
                OneCard(
                  text: "Elit",
                  selected: true,
                ),
                SizedBox(height: 8),
                Container(
                  height: 36,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Themes.blueGrey.shade400,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      size: 24,
                      color: Themes.blueGrey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}

class OneCard extends StatelessWidget {
  final String text;
  final bool selected;

  const OneCard({Key key, this.text, this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w100,
          fontStyle: FontStyle.italic,
        ),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: selected ? Themes.blue.shade300 : Themes.blueGrey.shade400,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
    );
  }
}
