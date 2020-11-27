import 'package:artist_project/inherited_username.dart';
import 'package:artist_project/screen/placeholder/image.dart';
import 'package:artist_project/screen/widgets.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatefulWidget {
  final dynamic data;

  const MusicCard({Key key, this.data}) : super(key: key);

  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ContainerImage(width: 104, height: 104, path: widget.data["image"]),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.data["artist"],
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      SizedBox(height: 4),
                      Text(
                        widget.data["song"],
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w100,
                            ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      SizedBox(height: 4),
                      Text(
                        widget.data["date"],
                        style: Theme.of(context).textTheme.headline6,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 4),
                      Text(
                        widget.data["year"],
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w100,
                            ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
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
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.mode_comment,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
