import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonSearchBar extends StatelessWidget {
  const CommonSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.getTextFieldBoxShadow(),
      child: TextField(
        style: Styles().getText16pxRegularTextStyle(),
        cursorHeight: 13,
        cursorColor: const Color(0xffD9D9D9),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor:
              Constance.isLight ? AppColors.lightWhiteColor : AppColors.dark,
          border: Styles().getSearchBorder(),
          hintText: "Search",
          hintStyle: Styles()
              .getText16pxRegularTextStyle(color: AppColors.lightGrayColor),
          prefixIcon: SizedBox(
            width: 14,
            height: 14,
            child: Icon(
              Icons.search,
              color: AppTheme.getColor(ColorType.gray, Constance.isLight),
            ),
          ),
        ),
      ),
    );
  }
}
