import 'package:app/src/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';

class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (val) {
        debugPrint("onTap Val: $val ");
      },
      indicatorColor: AppTheme.getColor(
        ColorType.primary,
        Constance.isLight,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Constance.globalPadding,
      ),
      labelPadding: EdgeInsets.symmetric(
        vertical: Constance.globalPadding,
      ),
      controller: controller,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 4,
      dividerColor: Colors.transparent,
      physics: const BouncingScrollPhysics(),
      tabs: [
        Text(
          "Woman",
          style: Styles().getText16pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
        Text(
          "Man",
          style: Styles().getText16pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
        Text(
          "Kids",
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
}
