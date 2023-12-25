import 'package:app/src/core/theme/system_overlay_style.dart';
import 'package:app/src/core/utils/media_query_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static void _setSystemOverlayDark() =>
      SystemChrome.setSystemUIOverlayStyle(AppSystemUiOverlayStyle.dark);

  static void _setSystemOverlayLight() =>
      SystemChrome.setSystemUIOverlayStyle(AppSystemUiOverlayStyle.light);

  static bool isLightMode(BuildContext context) =>
      context.brightness == Brightness.light;

  static bool isDarkMode(BuildContext context) =>
      context.brightness == Brightness.dark;

  static void setSystemOverlay(BuildContext context) {
    AppStyles.isLightMode(context)
        ? AppStyles._setSystemOverlayLight()
        : AppStyles._setSystemOverlayDark();
  }

}
