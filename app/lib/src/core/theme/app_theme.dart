import 'package:app/src/core/theme/widgets/appbar_themes.dart';
import 'package:app/src/core/theme/widgets/elevated_button_themes.dart';
// import 'package:app/src/core/theme/widgets/textfield_themes.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';

class AppTheme {
  static Color primaryColor(bool isLight) =>
      isLight ? AppColors.lightPrimaryColor : AppColors.darkPrimaryColor;

  static Color scaffoldBackgroundColor(bool isLight) =>
      isLight ? AppColors.lightBackgroundColor : AppColors.darkBackgroundColor;

  static Color redErrorColor(bool isLight) =>
      isLight ? AppColors.lightErrorColor : AppColors.darkErrorColor;

  static Color backgroundColor(bool isLight) =>
      isLight ? AppColors.lightBackgroundColor : AppColors.darkBackgroundColor;

  static Color primaryTextColor(bool isLight) =>
      isLight ? AppColors.lightPrimaryColor : AppColors.darkPrimaryColor;

  static Color secondaryTextColor(bool isLight) =>
      isLight ? AppColors.lightGrayColor : AppColors.darkGrayColor;

  static Color whiteColor(bool isLight) =>
      isLight ? AppColors.lightWhiteColor : AppColors.darkWhiteColor;

  static Color get backColor => AppColors.dark;

  static Color fontColor(bool isLight) =>
      isLight ? AppColors.lightText : AppColors.darkText;

  static ThemeData getThemeData(bool isLight) {
    return Constance.isLight
        ? _buildLightTheme(isLight)
        : _buildDarkTheme(isLight);
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: Styles().getHeadlineTextStyle(),
      headlineMedium: Styles().getHeadline2TextStyle(),
      headlineSmall: Styles().getHeadline3TextStyle(),
      titleLarge: Styles().getText16pxRegularTextStyle(),
      titleMedium: Styles().getText16pxTextStyle(),
      bodyLarge: Styles().getText14pxTextStyle(),
      bodyMedium: Styles().getDescriptionTextStyle(),
      labelSmall: Styles().getText11pxTextStyle(),
    );
  }

  static Color getColor(ColorType colorData, bool isLight) {
    switch (colorData) {
      case ColorType.text:
        return isLight ? AppColors.lightText : AppColors.darkText;

      case ColorType.gray:
        return isLight ? AppColors.lightGrayColor : AppColors.darkGrayColor;

      case ColorType.primary:
        return isLight
            ? AppColors.lightPrimaryColor
            : AppColors.darkPrimaryColor;

      case ColorType.background:
        return isLight
            ? AppColors.lightBackgroundColor
            : AppColors.darkBackgroundColor;

      case ColorType.white:
        return isLight ? AppColors.lightWhiteColor : AppColors.darkWhiteColor;

      case ColorType.error:
        return isLight ? AppColors.lightErrorColor : AppColors.darkErrorColor;

      case ColorType.success:
        return isLight
            ? AppColors.lightSuccessColor
            : AppColors.darkSuccessColor;

      case ColorType.saleHot:
        return isLight
            ? AppColors.lightSaleHotColor
            : AppColors.darkSaleHotColor;
      case ColorType.card:
        return isLight ? AppColors.lightWhiteColor : AppColors.dark;
    }
  }

//* ------------------------------------------------------------------------------------------------
  static ThemeData _buildLightTheme(bool isLight) {
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor(isLight),
      secondary: primaryColor(isLight),
    );
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      brightness: isLight ? Brightness.light : Brightness.dark,
      appBarTheme: AppBarThemes.appBarTheme(isLight: isLight),
      elevatedButtonTheme: AppButtonThemes.elevatedButtonTheme(),
      // inputDecorationTheme:AppTextFieldThemes.inputDecorationTheme(isLight: isLight),
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      // isLight ? const Color(0xFFF7F7F7) : const Color(0xFF1A1A1A),
      canvasColor: scaffoldBackgroundColor(isLight),
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(isLight),
      cardTheme: _cardTheme(isLight),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      // visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme(background: isLight ? const Color(0xFFFFFFFF) : const Color(0xFF2C2C2C)),
    );
  }

  static ThemeData _buildDarkTheme(isLight) {
    final ColorScheme colorScheme = const ColorScheme.dark().copyWith(
      primary: primaryColor(isLight),
      secondary: primaryColor(isLight),
    );
    final ThemeData base = ThemeData.dark();

    return base.copyWith(
      brightness: isLight ? Brightness.light : Brightness.dark,
      appBarTheme: AppBarThemes.appBarTheme(isLight: isLight),
      elevatedButtonTheme: AppButtonThemes.elevatedButtonTheme(),
      //! inputDecorationTheme:AppTextFieldThemes.inputDecorationTheme(isLight: isLight),
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      canvasColor: scaffoldBackgroundColor(isLight),
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(isLight),
      cardTheme: _cardTheme(isLight),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      // visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme(background: isLight ? const Color(0xFFFFFFFF) : const Color(0xFF2C2C2C)),
    );
  }

//* ------------------------------------------------------------------------------------------------
  static ButtonThemeData _buttonThemeData(ColorScheme colorScheme) {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    );
  }

  static DialogTheme _dialogTheme(bool isLight) {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      backgroundColor: backgroundColor(isLight),
    );
  }

  static CardTheme _cardTheme(bool isLight) {
    return CardTheme(
      clipBehavior: Clip.antiAlias,
      color: backgroundColor(isLight),
      shadowColor: secondaryTextColor(isLight).withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 8,
      margin: const EdgeInsets.all(0),
    );
  }

  static mapCardDecoration(bool isLight, context) => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor(isLight),
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Theme.of(context).dividerColor,
              offset: const Offset(4, 4),
              blurRadius: 8.0),
        ],
      );

  static buttonDecoration(bool isLight, context) => BoxDecoration(
        color: AppTheme.primaryColor(isLight),
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context!).dividerColor,
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      );

  static searchBarDecoration(bool isLight, context) => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor(isLight),
        borderRadius: const BorderRadius.all(Radius.circular(38)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context!).dividerColor,
            blurRadius: 8,
            // offset: Offset(4, 4),
          ),
        ],
      );

  static boxDecoration(bool isLight, context) => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor(isLight),
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Theme.of(context!).dividerColor,
            //   offset: Offset(2, 2),
            blurRadius: 8,
          ),
        ],
      );
}
