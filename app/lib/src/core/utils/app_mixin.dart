import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

mixin SnackBars {
  showSnakeBar(BuildContext context, String text) {
    SnackBar snackbar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}

mixin SizedBoxes {
  SizedBox hSizeBox(double height) => SizedBox(height: height);
  SizedBox wSizeBox(double width) => SizedBox(width: width);
}

mixin TextStyles {
  TextStyle getHeadlineTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: color);

  TextStyle getHeadline2TextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, height: 1.2, color: color);

  TextStyle getHeadline3TextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, height: 2.2, color: color);

  TextStyle getText11pxTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: color);

  TextStyle getText14pxTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: color,
      );

  TextStyle getText16pxTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color);

  TextStyle getText16pxRegularTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color,
      );

  TextStyle getDescriptionTextStyle({Color? color = AppColors.lightText}) =>
      TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: color,
          height: 1.5,
          letterSpacing: -0.15);
}

mixin TextFieldBorders {
  InputBorder getBorder({Color? color = AppColors.lightText}) =>
      OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(Constance.textFieldBorderRadius),
      );
  InputBorder getErrorBorder({Color? color = AppColors.lightText}) =>
      OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.lightErrorColor),
        borderRadius: BorderRadius.circular(Constance.textFieldBorderRadius),
      );
  InputBorder getFocusedBorder({Color? color = AppColors.lightText}) =>
      const OutlineInputBorder();
  InputBorder getFocusedErrorBorder({Color? color = AppColors.lightText}) =>
      const OutlineInputBorder();
  InputBorder getDisabledBorder({Color? color = AppColors.lightText}) =>
      const OutlineInputBorder();
  InputBorder getEnabledBorder({Color? color = AppColors.lightText}) =>
      const OutlineInputBorder();

  InputBorder getSearchBorder({Color? color = AppColors.lightText}) =>
      const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        borderSide: BorderSide.none,
      );
}

mixin Shadow {
  BoxShadow getPrimaryBtnBoxShadow() => const BoxShadow(
        color: Color.fromRGBO(211, 38, 38, 0.25),
        blurRadius: 8,
        offset: Offset(0, 4),
        spreadRadius: 0,
      );

  BoxShadow getCircleBtnBoxShadow() => const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.08),
        blurRadius: 4,
        offset: Offset(0, 4),
        spreadRadius: 0,
      );

  BoxShadow getCircleBtnBoxShadowDark() => const BoxShadow(
        color: Color.fromRGBO(18, 18, 18, 0.3),
        blurRadius: 12,
        offset: Offset(0, 4),
        spreadRadius: 0,
      );

  BoxShadow getCardBoxShadow({double opacity = 0.08}) => BoxShadow(
        color: Color.fromRGBO(0, 0, 0, opacity),
        blurRadius: 25,
        offset: const Offset(0, 1),
        spreadRadius: 0,
      );

  BoxShadow getSwitchBoxShadow() => const BoxShadow(
        color: Color.fromRGBO(42, 169, 82, 0.4),
        blurRadius: 8,
        offset: Offset(0, 0),
        spreadRadius: 0,
      );

  BoxShadow getNavBarBoxShadow() => const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.06),
        blurRadius: 20,
        offset: Offset(0, -4),
        spreadRadius: 0,
      );
}