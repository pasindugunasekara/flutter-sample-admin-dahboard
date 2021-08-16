import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  const Responsive(
      {Key key, @required this.mobile, this.tab, @required this.desktop})
      : super(key: key);

  static bool isMobile(context) => MediaQuery.of(context).size.width < 900;
  static bool isTab(context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 900;
  static bool isDesktop(context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (isDesktop(context)) {
      return desktop;
    } else if (isTab(context) && tab != null) {
      return tab;
    } else {
      return mobile;
    }

    return Container();
  }
}
