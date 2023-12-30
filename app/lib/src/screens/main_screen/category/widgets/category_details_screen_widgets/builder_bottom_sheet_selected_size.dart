import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_filter_widgets/build_categories.dart';
import 'package:app/src/screens/main_screen/category/widgets/builder_bottom_sheet_selected_size_widgets/build_size_info.dart';
import 'package:flutter/material.dart';

class BuilderBottomSheetSelectedSize extends StatefulWidget {
  const BuilderBottomSheetSelectedSize({
    super.key,
  });

  @override
  State<BuilderBottomSheetSelectedSize> createState() =>
      _BuilderBottomSheetSelectedSizeState();
}

class _BuilderBottomSheetSelectedSizeState
    extends State<BuilderBottomSheetSelectedSize> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.getColor(ColorType.background, Constance.isLight),
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
            "Select Size",
            style: Styles().getHeadline3TextStyle(
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
          ),
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
          Column(
            children: [
              buildGridSizes(),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            ],
          ),
          buildSizeInfo(),
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
          const CommonPrimaryBtn(btnText: "ADD TO CART"),
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.046),
        ],
      ),
    );
  }
}
