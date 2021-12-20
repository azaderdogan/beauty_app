import 'package:sizer/sizer.dart';

extension ScalablePixel on num {
  double get scpx =>
      (calculateSp(this) * (SizerUtil.width / 3) / 100).roundToDouble();

  double calculateSp(num fromZeplinPt) {
    double sp = 0.0;

    sp = fromZeplinPt * 3 * 100 / 375;
    return sp;
  }
}
