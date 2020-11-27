import 'dart:math';

import 'package:artist_project/dummydata.dart';
import 'package:artist_project/screen/widgets.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<String> musicianFilter = localData["discover"]["filters"]["musician"];
  List<String> genreFilter = localData["discover"]["filters"]["genre"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Themes.blue.shade900,
      child: Column(
        children: <Widget>[
          SizedBox(height: 32),
          TitleWidget(title: "Keşfet", username: "username0"),
          SizedBox(height: 32),
          Flexible(
            child: CardContainer(
              child: Column(
                children: [
                  FilterSelector(
                    title: "Neye ihtiyacın var?",
                    options: musicianFilter,
                  ),
                  SizedBox(height: 16),
                  FilterSelector(
                    title: "Hangi müzik türü?",
                    options: genreFilter,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32),
          CardContainer(
            child: Column(
              children: <Widget>[
                Text(
                  "Önerilenler",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 8),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        (localData["discover"]["recommended"] as List<String>)
                            .map((e) => SuggestedPeopleWidget(username: e))
                            .toList()),
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
  FilterSelector({Key key, this.title, this.options})
      : super(key: key);
  final String title;
  final List<String> options;

  @override
  _FilterSelectorState createState() => _FilterSelectorState();
}

class _FilterSelectorState extends State<FilterSelector> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    List<Widget> musicianFilterWidget = widget.options.map((e) {
      return Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              widget.options.remove(e);
            });
          },
          child: Text(
            e,
            style: Theme.of(context).textTheme.button,
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
      );
    }).toList();
    if (musicianFilterWidget.length <= 5) {
      musicianFilterWidget.add(Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              widget.options.add("Filtre${random.nextInt(1000)}");
            });
          },
          child: Icon(
            Icons.add,
            size: 14,
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
      ));
    }

    return Column(
      children: <Widget>[
        Text(
          widget.title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 56,
          width: 308,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            childAspectRatio: 1/4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: musicianFilterWidget,
          ),
        ),
      ],
    );
  }
}

class SuggestedPeopleWidget extends StatelessWidget {
  final String username;

  const SuggestedPeopleWidget({Key key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfileImageWidget(username: username, size: 60),
        SizedBox(height: 4),
        Text(cloudData[username]["name"],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

/*
child: ListView(
        children: <Widget>[

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
        ],
      ),
 */
