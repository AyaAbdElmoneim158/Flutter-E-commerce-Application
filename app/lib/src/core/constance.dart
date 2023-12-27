import 'package:app/src/core/utils/size_config.dart';

abstract class Constance {
  static bool isLight = true;
  static const String appName = "E-commerce App";
  static const double globalRadius = 12;
  static const double textFieldBorderRadius = 8;

  static const double globalSizeBox = 8;
  static double globalPadding = SizeConfig.screenHeight! * 0.016;
  static double aspectRatio = 16 / 9;

  static double cardHight = SizeConfig.screenHeight! * 0.104; //104
  static double promoCardHight = SizeConfig.screenHeight! * 0.080;
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
