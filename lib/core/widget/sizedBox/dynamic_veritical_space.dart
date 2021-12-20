import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class DynamicVerticalSpace extends StatelessWidget {
  double? height;
  DynamicVerticalSpace({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 3.h,
    );
  }
}
