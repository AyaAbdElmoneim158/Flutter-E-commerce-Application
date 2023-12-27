import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget buildTitle(String title) {
  return Column(
    children: [
      Text(
        title,
        style: Styles().getText14pxTextStyle(
          color: AppTheme.getColor(ColorType.text, Constance.isLight),
        ),
      ),
      Helper().hSizeBox(Constance.globalPadding),
    ],
  );
}
