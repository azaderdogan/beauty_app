import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final double? size;
  final Color? color;

  const CustomIconButton(
      {Key? key,
      required this.icon,
      required this.onTap,
      this.size,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: size ?? 6.h,
        color: color ?? const Color(0xff000000),
      ),
    );
  }
}
