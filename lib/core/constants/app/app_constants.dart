class ApplicationConstants {
   static ApplicationConstants? _instance;
  static ApplicationConstants get instance {
    _instance ??= _instance = ApplicationConstants._init();
    return _instance!;
  }

  ApplicationConstants._init();
  static const FONT_FAMILY_BOLD = 'Poppins_Bold';
  static const FONT_FAMILY_LIGHT = 'Poppins_Light';
  static const FONT_FAMILY_MEDIUM = 'Poppins_Medium';
  static const FONT_FAMILY_SEMI_BOLD = 'Poppins_SemiBold';
  static const FONT_FAMILY_REGULAR = 'Poppins_Regular';

  static const EMAIL_REGEXP = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const PHONE_REGEXP = r'(^(?:[+0]9)?[0-9]{10,12}$)';
}
