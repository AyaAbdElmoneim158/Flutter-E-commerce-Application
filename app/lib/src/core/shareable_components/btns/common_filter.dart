import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonFilter extends StatelessWidget {
  const CommonFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.getColor(
        ColorType.background,
        Constance.isLight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.filter,
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
            label: Text(
              "Filters",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_downward_rounded,
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
            label: Text(
              "Price: lowest to high",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.view_array,
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
