import 'package:artist_project/screen/widgets.dart';
import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  final dynamic data;

  DetailsWidget({key, this.data}) : super(key: key);

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
                            widget.data["name"],
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(height: 6),
                          Text(
                            widget.data["description"],
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          SizedBox(height: 6),
                          Text(
                            widget.data["genres"],
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 4),
                    ContainerImage(
                        width: 96,
                        height: 96,
                        radius: 48,
                        path: widget.data["image"]),
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
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            widget.data["followerCount"].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Connections",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            widget.data["linkCount"].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 18),
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
                        size: 28,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            widget.data["locationTop"],
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            widget.data["locationBottom"],
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .copyWith(fontSize: 11),
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
