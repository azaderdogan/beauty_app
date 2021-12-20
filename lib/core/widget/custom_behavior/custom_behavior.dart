import 'package:flutter/material.dart';

/*
  we set up this build to destroy scroll color
*/
class CustomBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
