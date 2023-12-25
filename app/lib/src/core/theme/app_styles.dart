import 'package:app/src/core/theme/system_overlay_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static void _setSystemOverlayDark() =>
      SystemChrome.setSystemUIOverlayStyle(AppSystemUiOverlayStyle.dark);

  static void _setSystemOverlayLight() =>
      SystemChrome.setSystemUIOverlayStyle(AppSystemUiOverlayStyle.light);

  static bool isLightMode(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.light;

  static bool isDarkMode(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.dark;

  static void setSystemOverlay(BuildContext context) {
    AppStyles.isLightMode(context)
        ? AppStyles._setSystemOverlayLight()
        : AppStyles._setSystemOverlayDark();
  }

}
