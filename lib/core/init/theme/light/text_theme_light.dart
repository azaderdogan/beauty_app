import 'package:beauty_app/core/constants/app/app_constants.dart';
import 'package:beauty_app/core/extensions/num.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextThemeLight {
  static TextThemeLight? _instace;
  static TextThemeLight? get instance {
    _instace ??= TextThemeLight._init();
    return _instace;
  }

  TextThemeLight._init();

  final TextStyle headline1 = TextStyle(
    color: const Color(0xffffffff),
    fontWeight: FontWeight.w500,
    fontFamily: ApplicationConstants.FONT_FAMILY_MEDIUM,
    fontStyle: FontStyle.normal,
    fontSize: 24.0.scpx,
  );

  final TextStyle headline2 = TextStyle(
    fontFamily: ApplicationConstants.FONT_FAMILY_MEDIUM,
    color: const Color(0xff111111),
    fontSize: 16.scpx,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  final TextStyle headline3 = TextStyle(
    fontFamily: ApplicationConstants.FONT_FAMILY_REGULAR,
    color: const Color(0xffc4c4c4),
    fontSize: 12.scpx,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.48,
  );
  final TextStyle headline4 = TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w600,
      fontFamily: ApplicationConstants.FONT_FAMILY_SEMI_BOLD,
      fontStyle: FontStyle.normal,
      fontSize: 10.0.scpx);

  final TextStyle headline5 = TextStyle();
  final TextStyle headline6 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  final TextStyle bodyText = TextStyle(
    color: const Color(0xff707070),
    fontSize: 15.sp,
  );
  final TextStyle overline = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
}
