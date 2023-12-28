import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';

class AppTextFieldThemes {
  static InputDecorationTheme inputDecorationTheme({required bool isLight}) {
    return InputDecorationTheme(
      isDense: true,
      filled: true,
      fillColor: Constance.isLight ? AppColors.lightWhiteColor : AppColors.dark,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(Constance.textFieldBorderRadius),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: AppTheme.getColor(ColorType.error, isLight)),
        borderRadius: BorderRadius.circular(Constance.textFieldBorderRadius),
      ),
      hintStyle: TextStyle(
        color: isLight ? AppColors.lightGrayColor : AppColors.darkGrayColor,
        fontFamily: AppStrings.fontFamily,
        fontWeight: FontWeight.normal,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
