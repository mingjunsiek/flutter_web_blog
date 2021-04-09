import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  // This size work fine on this design but may need some customization depending on future design

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 900 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // width > 900, consider it desktop
        if (constraints.maxWidth >= 900)
          return desktop;
        // width < 900 and > 650, consider it tablet
        else if (constraints.maxWidth >= 650)
          return tablet;
        // return mobile
        else
          return mobile;
      },
    );
  }
}
