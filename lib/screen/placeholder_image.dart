
import 'package:flutter/material.dart';

class PlaceholderImage extends StatelessWidget {
  final double width;
  final double height;

  const PlaceholderImage({Key key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          alignment: FractionalOffset.center,
          image: NetworkImage(
            "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
          ),
        ),
      ),
    );
  }
}
