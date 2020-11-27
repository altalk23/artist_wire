import 'package:artist_project/screen/navigator.dart';
import 'package:artist_project/themes.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle("Artist Project");
    setWindowMinSize(Size(375, 768));
    setWindowMaxSize(Size(375, 768));
  }
  runApp(MyApp());
}

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
