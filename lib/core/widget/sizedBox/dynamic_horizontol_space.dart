import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class DynamicHorizontalSpace extends StatelessWidget {
  double? width;
  DynamicHorizontalSpace({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 5.w,
    );
  }
}
