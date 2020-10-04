
import 'package:flutter/material.dart';

class PlaceholderImage extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;

  const PlaceholderImage({Key key, this.width, this.height, this.radius = 8, this.fit = BoxFit.fitHeight,}) : super(key: key);
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
        borderRadius: BorderRadius.circular(radius),
        image: DecorationImage(
          fit: fit,
          alignment: FractionalOffset.center,
          image: NetworkImage(
            "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png",
          ),
        ),
      ),
    );
  }
}
