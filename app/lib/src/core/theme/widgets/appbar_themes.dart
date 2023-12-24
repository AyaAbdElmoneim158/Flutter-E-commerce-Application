import 'package:app/src/core/theme/system_overlay_style.dart';
import 'package:app/src/core/theme/widgets/icon_themes.dart';

import '/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarThemes {
  static AppBarTheme appBarTheme({required bool isLight}) {
    return AppBarTheme(
      systemOverlayStyle:
          AppSystemUiOverlayStyle.setSystemUiOverlayStyle(isLight: isLight),
      backgroundColor: isLight
          ? AppColors.lightBackgroundColor
          : AppColors.darkBackgroundColor,
      titleTextStyle: TextStyle(color: isLight ? Colors.black : Colors.white),
      elevation: 0,
      iconTheme: AppIconThemes.iconTheme(isLight: isLight),
      actionsIconTheme: AppIconThemes.iconTheme(isLight: isLight),
      scrolledUnderElevation: 0,
    );
  }
}
