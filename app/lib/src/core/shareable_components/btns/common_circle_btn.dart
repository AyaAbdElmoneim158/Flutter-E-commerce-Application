import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonCircleBtn extends StatelessWidget {
  const CommonCircleBtn({
    super.key,
    this.isBig = true,
    this.onTap,
    required this.icon,
    this.isClicked = true,
    this.isGrayIcon = false,
  });
  final bool isBig;
  final void Function()? onTap;
  final IconData? icon;
  final bool isClicked;
  final bool isGrayIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: isBig ? 52 : 36,
          width: isBig ? 52 : 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isClicked
                ? AppTheme.getColor(ColorType.primary, Constance.isLight)
                : AppTheme.getColor(ColorType.card, Constance.isLight),
            boxShadow: isClicked
                ? [Styles().getPrimaryBtnBoxShadow()]
                : Constance.isLight
                    ? [Styles().getCircleBtnBoxShadow()]
                    : [Styles().getCircleBtnBoxShadowDark()],
          ),
          child: Center(
            child: Icon(
              icon,
              color: isClicked
                  ? AppColors.darkWhiteColor
                  : isGrayIcon
                      ? AppTheme.getColor(ColorType.gray, Constance.isLight)
                      : AppTheme.getColor(ColorType.primary, Constance.isLight),
              size: isBig ? 24 : 20,
            ),
          )),
    );
  }
}
