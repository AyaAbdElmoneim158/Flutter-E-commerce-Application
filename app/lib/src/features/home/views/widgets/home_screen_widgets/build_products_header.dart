import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget buildProductsHeader({required String type, required String desc}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: Constance.globalPadding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type,
              style: Styles().getHeadlineHomeTextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
            Text(
              desc,
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ],
        ),
        Text(
          AppStrings.viewAll,
          style: Styles().getText11pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
      ],
    ),
  );
}
