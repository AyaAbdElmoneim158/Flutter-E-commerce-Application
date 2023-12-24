import 'package:app/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';

class AppButtonThemes {
  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
        backgroundColor: MaterialStateProperty.all(
            AppTheme.getColor(ColorType.primary, Constance.isLight)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
