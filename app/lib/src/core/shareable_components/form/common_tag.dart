import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTag extends StatelessWidget {
  const CommonTag({
    super.key,
    required this.tagText,
    this.styleNumber = 1,
    this.onTap,
  });
  final String? tagText;
  final int styleNumber;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
        decoration: BoxDecoration(
          color: getBgColor(styleNumber),
          borderRadius: (styleNumber == 4)
              ? BorderRadius.circular(29)
              : BorderRadius.circular(8),
          border: (styleNumber != 1)
              ? null
              : Border.all(
                  width: 1.3,
                  color: AppTheme.getColor(
                    ColorType.gray,
                    Constance.isLight,
                  ),
                ),
        ),
        child: Text(
          tagText!,
          style: Styles().getText14pxTextStyle(
            color: getColor(styleNumber),
          ),
        ),
      ),
    );
  }

  Color getColor(styleNumber) {
    if ((styleNumber == 1) || (styleNumber == 3)) {
      return AppTheme.getColor(
        ColorType.text,
        Constance.isLight,
      );
    } else if ((styleNumber == 2) || (styleNumber == 4)) {
      return AppTheme.getColor(
        ColorType.text,
        !Constance.isLight,
      );
    } else {
      return AppTheme.getColor(
        ColorType.success,
        Constance.isLight,
      );
    }
  }

  Color getBgColor(styleNumber) {
    if (styleNumber == 1) {
      return AppTheme.getColor(ColorType.background, Constance.isLight);
    } else if (styleNumber == 2) {
      return AppTheme.getColor(ColorType.primary, Constance.isLight);
    } else if (styleNumber == 3) {
      return AppTheme.getColor(ColorType.background, Constance.isLight);
    } else {
      return AppTheme.getColor(ColorType.text, Constance.isLight);
    }
  }
}
