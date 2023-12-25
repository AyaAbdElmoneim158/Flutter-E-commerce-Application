import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget buildKeyValueText({required String key, required String value}) {
  return Row(
    children: [
      Text(
        "$key: ",
        style: Styles().getText14pxTextStyle(
          color: AppTheme.getColor(ColorType.gray, Constance.isLight),
        ),
      ),
      Text(
        value,
        style: Styles().getText16pxTextStyle(
          color: AppTheme.getColor(ColorType.text, Constance.isLight),
        ),
      )
    ],
  );
}
