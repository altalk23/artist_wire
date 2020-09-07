import 'package:artist_project/screen/navigator.dart';
import 'package:artist_project/themes.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.mainTheme,
      debugShowCheckedModeBanner: false,
      home: MainNavigator(),
    );
  }
}
