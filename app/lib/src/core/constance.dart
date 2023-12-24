abstract class Constance {
  static bool isLight = true;
  static const String appName = "E-commerce App";
  static const double globalRadius = 12;
  static const double textFieldBorderRadius = 8;

  static const double globalSizeBox = 8;
  static const double globalPadding = Constance.globalSizeBox * 2;
  static double aspectRatio = 16 / 9;

  static const double cardHight = 124; //104
  static const double promoCardHight = 80;
}

enum ColorType {
  text,
  gray,
  primary,
  background,
  white,
  error,
  success,
  saleHot,
  card,
}

enum ThemeModeType {
  system,
  dark,
  light,
}
