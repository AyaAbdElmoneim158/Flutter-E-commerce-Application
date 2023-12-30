import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_brand.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_btns.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_categories.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_colors.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_price_rang.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_sizes.dart';
import 'package:flutter/material.dart';

class BuilderBottomSheetFilter extends StatefulWidget {
  const BuilderBottomSheetFilter({
    super.key,
  });

  @override
  State<BuilderBottomSheetFilter> createState() =>
      _BuilderBottomSheetFilterState();
}

class _BuilderBottomSheetFilterState extends State<BuilderBottomSheetFilter> {
  int currentIndex = 0;
  List<String> sortByList = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: highest to low",
    "Price: lowest to high"
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.getColor(ColorType.background, Constance.isLight),
      child: SizedBox(
        height: SizeConfig.screenHeight,
        child: Column(
          children: [
            const CommonAppBar(
              headline: "Filters",
              style: 3,
              bgColor: ColorType.white,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            Column(
              children: [
                buildPriceRang(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                buildColors(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                buildSizes(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                buildCategories(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                buildBrand(context),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.046),
              ],
            ),
            Expanded(child: buildBtns()),
          ],
        ),
      ),
    );
  }
}
