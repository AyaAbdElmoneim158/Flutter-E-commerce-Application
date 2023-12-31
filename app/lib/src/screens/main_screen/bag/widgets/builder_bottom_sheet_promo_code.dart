import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_promo_card.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/coupon_model.dart';
import 'package:flutter/material.dart';

class BuilderBottomSheetPromoCode extends StatefulWidget {
  const BuilderBottomSheetPromoCode({
    super.key,
  });

  @override
  State<BuilderBottomSheetPromoCode> createState() =>
      _BuilderBottomSheetPromoCodeState();
}

class _BuilderBottomSheetPromoCodeState
    extends State<BuilderBottomSheetPromoCode> {
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
        // height: SizeConfig.screenHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            Text(
              "Your Promo Codes",
              style: Styles().getHeadline3TextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            ListView.separated(
              itemBuilder: (context, index) =>
                  CommonPromoCard(coupon: Coupon.dummyCoupons[0]),
              separatorBuilder: (context, index) =>
                  Helper().hSizeBox(Constance.globalPadding * 1.5),
              itemCount: Coupon.dummyCoupons.length,
            ),
          ],
        ),
      ),
    );
  }
}
