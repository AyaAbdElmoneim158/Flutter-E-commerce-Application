 import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

 Row buildCheckoutInfo(String info, String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$label:",
          style: Styles().getText14pxTextStyle(
            color: AppTheme.getColor(
              ColorType.gray,
              Constance.isLight,
            ),
          ),
        ),
        Text(
          "$info\$",
          style: Styles().getText16pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
      ],
    );
  }
