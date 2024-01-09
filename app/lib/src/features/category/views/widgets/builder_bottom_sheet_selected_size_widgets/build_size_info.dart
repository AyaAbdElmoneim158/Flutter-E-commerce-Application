import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Container buildSizeInfo() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 0.01,
        color: AppTheme.getColor(
          ColorType.gray,
          Constance.isLight,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(Constance.globalPadding * 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Size info',
            style: Styles().getText16pxTextStyle(
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 12,
              ))
        ],
      ),
    ),
  );
}
