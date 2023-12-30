import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/builder_bottom_sheet_brand.dart';
import 'package:flutter/material.dart';

Widget buildBrand(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Brand',
            style: Styles().getText16pxTextStyle(
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
          ),
          Text(
            'adidas Originals, Jack & Jones, s.Oliver',
            style: Styles().getText11pxTextStyle(
              color: AppTheme.getColor(
                ColorType.gray,
                Constance.isLight,
              ),
            ),
          ),
        ]),
        IconButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (context) => const BuilderBottomSheetBrand());
              debugPrint("showBottomSheet");
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            ))
      ],
    ),
  );
}
