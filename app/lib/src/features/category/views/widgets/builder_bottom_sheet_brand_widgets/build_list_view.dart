import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Expanded buildListView(brandList) {
  return Expanded(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
      child: ListView.separated(
        itemBuilder: (context, index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              brandList[index],
              style: Styles().getText16pxRegularTextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
            Checkbox(
              value: false,
              onChanged: (value) {},
              activeColor:
                  AppTheme.getColor(ColorType.primary, Constance.isLight),
            ),
          ],
        ),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding),
        itemCount: brandList.length,
      ),
    ),
  );
}
