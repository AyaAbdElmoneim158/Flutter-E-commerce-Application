 import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

 Padding buildEnterPromoCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: BaseCard(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter your promo code",
              style: Styles().getText14pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 300,
                        color: Colors.green,
                      )); // const BuilderBottomSheetPromoCode());
              debugPrint("showBottomSheet");
            },
            icon: const Icon(Icons.arrow_forward),
          ),
          /* CommonCircleBtn(
            icon: Icons.arrow_forward,
            onTap: () {
              showBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 300,
                        color: Colors.green,
                      )); // const BuilderBottomSheetPromoCode());
              debugPrint("showBottomSheet");
            },
          )*/
        ],
      )),
    );
  }