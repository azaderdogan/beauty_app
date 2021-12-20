
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app/app_constants.dart';

// ignore: must_be_immutable
class FilledStandartButton extends StatelessWidget {
  String text;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Color? color;

  FilledStandartButton(
    this.text, {
    Key? key,
    this.onPressed,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onPressed,
      child: Ink(
        height: height ?? 6.h,
        width: width ?? context.width,
        decoration: BoxDecoration(
            color: color ?? context.theme.colorScheme.secondary,            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: _buildText(context),
        ),
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Text(text,
        style: context.textTheme.headline6!.copyWith(
            fontFamily: ApplicationConstants.FONT_FAMILY_MEDIUM,
            color: context.theme.colorScheme.onSurface,
            fontSize: 16.sp));
  }
}
