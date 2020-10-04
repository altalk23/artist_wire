import 'package:artist_project/screen/placeholder_image.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Themes.blue.shade900,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Themes.blue.shade800,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 40,),
                PlaceholderImage(width: 104, height: 104, radius: 52),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 40,
                  color: Themes.blueGrey.shade400,
                  onPressed: () {},
                ),
              ],
            ),

            SizedBox(height: 8),
            TextField(
              maxLength: 30,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'İsim',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              maxLength: 20,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              maxLength: 200,
              maxLines: null,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'Bio',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              maxLength: 40,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'Telefon',
              ),
            ),
            SizedBox(height: 8),
            TextField(
              maxLength: 25,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
              ),
              decoration: InputDecoration(
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(color: Themes.blueGrey.shade600, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                fillColor: Themes.blue.shade700,
                labelText: 'Konum',
              ),
            ),
            SizedBox(height: 16),
            FlatButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: 36,
                child: Text(
                  "Kaydet",
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
                    onPressed: () {},
                    child: Container(
                      height: 36,
                      child: Text(
                        "Kartlar",
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
                    onPressed: () {},
                    child: Container(
                      height: 36,
                      child: Text(
                        "Bileşenler",
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
    );
  }
}
