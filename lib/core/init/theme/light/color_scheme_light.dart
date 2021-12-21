import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= _instance = ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final Color green = const Color(0xff7bc4b2);
  final Color blackVariant = const Color(0xff111111);
  final Color orange = const Color(0xffffe491);
  final Color red = const Color(0xffeb5757);
  final Color redVariant = const Color(0xfffecdcd);
  final Color yellow = const Color(0xffFEBB00);
  final Color yellowVariant = const Color(0xffffe491);
  final Color lightGrey = const Color(0xffc4c4c4);
  final Color darktGrey = const Color(0xfff4f4f4);
  final Color grey = const Color(0xffBBBBBB);
  final Color mildGrey = const Color(0xffd2e3f5);
  final Color greyBlue = const Color(0xffb6e7da);
  final Color white = const Color(0xfffcead6);
  final Color deepDarkGrey = const Color(0xff2B2727);
  final Color lightRed = const Color(0xffeb5757);
  final Color backgroundWhite = const Color(0xfffcfcfc);

}
