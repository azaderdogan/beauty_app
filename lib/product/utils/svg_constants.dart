import 'package:beauty_app/core/extensions/string_extension.dart';

class SvgConstants {
  static SvgConstants? _instance;
  static SvgConstants get instance {
    _instance ??= _instance = SvgConstants._init();
    return _instance!;
  }

  SvgConstants._init();

  String libstick = '027-lipstick'.toSvg;
  String mask = '030-mask'.toSvg;
  String moisturizer = '033-moisturizer'.toSvg;
  String makeUp = '038-make-up-3'.toSvg;
  String skincare = '045-skincare'.toSvg;
  String calendar = 'calendar'.toSvg;
  String notification = 'notification'.toSvg;
  String heartRed = 'heart-1'.toSvg;
  String heart = 'heart'.toSvg;
  String home = 'home'.toSvg;
  String pattern = 'pattern'.toSvg;
  String search = 'search'.toSvg;
  String shoppingCart = 'shopping-cart'.toSvg;
  String user = 'user'.toSvg;
}
