import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.blue.shade900,

    );
    return Container(
      color: Themes.blue.shade900,
      padding: EdgeInsets.only(top: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 192,
                padding: EdgeInsets.only(
                  left: 16.0,
                  top: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Themes.blue.shade400,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(48),
                    bottomRight: Radius.circular(48),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(blurRadius: 2, color: Color(0x44000000)),
                      ], shape: BoxShape.circle, color: Color(0xFF498692)),
                    ),
                    Text(
                      "Mehmet Karahan",
                      style: Themes.mainTheme.textTheme.headline6,
                    ),
                    Text(
                      "Rock, Alternative Rock",
                      style: Themes.mainTheme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
