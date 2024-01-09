import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/category/views/widgets/builder_bottom_sheet_brand_widgets/build_btns.dart';
import 'package:app/src/features/category/views/widgets/builder_bottom_sheet_brand_widgets/build_list_view.dart';
import 'package:flutter/material.dart';

class BuilderBottomSheetBrand extends StatefulWidget {
  const BuilderBottomSheetBrand({
    super.key,
  });

  @override
  State<BuilderBottomSheetBrand> createState() =>
      _BuilderBottomSheetBrandState();
}

class _BuilderBottomSheetBrandState extends State<BuilderBottomSheetBrand> {
  List<String> brandList = [
    "adidas",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.getColor(ColorType.background, Constance.isLight),
        boxShadow: [Styles().getAppBarBoxShadow()],
      ),
      child: SizedBox(
        height: SizeConfig.screenHeight,
        child: Column(
          children: [
            const CommonAppBar(
              headline: "Brand",
              style: 3,
              bgColor: ColorType.white,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            buildListView(brandList),
            buildBtns(),
          ],
        ),
      ),
    );
  }
}
