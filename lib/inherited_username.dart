import 'package:flutter/material.dart';

class InheritedUsername extends InheritedWidget {
  final String username;

  const InheritedUsername({
    Key key,
    @required Widget child,
    @required this.username,
  })  : assert(child != null),
        super(key: key, child: child);

  static InheritedUsername of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedUsername>();
  }

  @override
  bool updateShouldNotify(InheritedUsername old) => username != old.username;
}
