import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

extension PaddingExtensionAll on BuildContext {
  double get lowValue => 4.h;
  double get lowValueH => 8.5.w;
  double get normalValue => 8.h;
  double get mediumValue => 12.h;
  double get highValue => 16.h;

  EdgeInsets get paddingLow => EdgeInsets.all(1.h); // 1
  EdgeInsets get xpaddingNormal => EdgeInsets.all(8.h);
  EdgeInsets get paddingMedium => EdgeInsets.all(12.h);
  EdgeInsets get paddingHigh => EdgeInsets.all(16.h);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
}
