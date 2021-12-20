import 'package:beauty_app/core/extensions/string_extension.dart';

class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();
  String yellowImage = 'image2'.toPng;
  String yellowImage2 = 'image3'.toPng;
  String greenImage = 'image1'.toPng;
  String cart = 'image6'.toPng;
  String person = 'person'.toPng;
  String image4 = 'image4'.toPng;
  String image5 = 'image5'.toPng;
  String image7 = 'image7'.toPng;
}
