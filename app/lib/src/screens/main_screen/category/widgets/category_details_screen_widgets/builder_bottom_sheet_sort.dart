import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_sort_widgets/build_sorted_list_view.dart';
import 'package:flutter/material.dart';

class BuilderBottomSheetSort extends StatelessWidget {
  const BuilderBottomSheetSort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppTheme.getColor(ColorType.background, Constance.isLight),
          boxShadow: [Styles().getBottomSheetBoxShadow()]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
          Center(
            child: Container(
              width: 60,
              height: 6,
              decoration: BoxDecoration(
                  color: AppTheme.getColor(
                    ColorType.gray,
                    Constance.isLight,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(3))),
            ),
          ),
          Text(
            AppStrings.sortBy,
            style: Styles().getHeadline3TextStyle(
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
          ),
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
          const BuildSortedListView(),
        ],
      ),
    );
  }
}
