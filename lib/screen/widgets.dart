import 'package:artist_project/themes.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String username;

  const TitleWidget({Key key, @required this.title, @required this.username})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
          ProfileImageWidget(username: username, size: 84)
        ],
      ),
    );
  }
}

class ProfileImageWidget extends StatelessWidget {
  final String username;
  final double size;

  const ProfileImageWidget(
      {Key key, @required this.username, @required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Themes.blue.shade500,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 4,
            blurRadius: 4,
          ),
        ],
        image: profileImage(username),
        borderRadius: BorderRadius.all(
          Radius.circular(size / 2),
        ),
      ),
    );
  }
}

DecorationImage profileImage(String username) {
  return DecorationImage(
    fit: BoxFit.fitHeight,
    alignment: FractionalOffset.center,
    image: AssetImage("assets/profile_image/$username.png"),
  );
}

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Themes.blue.shade800,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: child,
    );
  }
}

class ContainerImage extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;
  final String path;

  const ContainerImage({
    Key key,
    this.width,
    this.height,
    this.radius = 8,
    this.fit = BoxFit.fitHeight,
    this.path = "assets/placeholder.png",
  }) : super(key: key);

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
          image: AssetImage(this.path),
        ),
      ),
    );
  }
}

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: child,
      color: Themes.blue.shade900,
    );
  }
}
