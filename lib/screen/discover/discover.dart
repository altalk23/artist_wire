import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Themes.blue.shade900,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 64),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Keşfet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
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
                    border: Border.all(
                      color: Themes.blue.shade100,
                      width: 4,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      alignment: FractionalOffset.center,
                      image: AssetImage("assets/placeholder.png"),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(48),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Themes.blue.shade800,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FilterSelector(
                  title: "Neye ihtiyacın var?",
                  options: [
                    "Vokalist",
                    "Davulcu",
                  ],
                  add: true,
                ),
                SizedBox(height: 24),
                FilterSelector(
                  title: "Hangi müzik türü?",
                  options: [
                    "Rock",
                    "Alternatif Rock",
                  ],
                  add: true,
                ),
                SizedBox(height: 24),
                FilterSelector(
                  title: "Konum önemli mi?",
                  options: [
                    "Evet",
                    "Hayır",
                  ],
                  add: false,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.blue.shade800,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  "Önerilenler",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SuggestedPeopleWidget(name: "İsmail Özcan",),
                    SuggestedPeopleWidget(name: "Aykut Şimşek",),
                    SuggestedPeopleWidget(name: "Abdullah Özdemir",),
                    SuggestedPeopleWidget(name: "Mehmet Kaplan",),
                  ],
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

class FilterSelector extends StatefulWidget {
  FilterSelector({Key key, this.title, this.options, this.add})
      : super(key: key);
  final String title;
  final List<String> options;
  final bool add;

  @override
  _FilterSelectorState createState() => _FilterSelectorState();
}

class _FilterSelectorState extends State<FilterSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          widget.title,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w200,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 56,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            childAspectRatio: 0.25,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                child: Text(
                  widget.options[0],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Themes.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
              ),
              Container(
                child: Text(
                  widget.options[1],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  color: Themes.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
              ),
              widget.add
                  ? Container(
                      child: FlatButton(
                        child: Icon(
                          Icons.add,
                          size: 16,
                          color: Themes.blue.shade50,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Themes.blue.shade50,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}

class SuggestedPeopleWidget extends StatelessWidget {
  final String name;

  const SuggestedPeopleWidget({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: Themes.blue.shade400,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 4,
                blurRadius: 4,
              ),
            ],
            border: Border.all(
              color: Themes.blue.shade100,
              width: 1,
            ),
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              alignment: FractionalOffset.center,
              image: AssetImage("assets/placeholder.png"),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
