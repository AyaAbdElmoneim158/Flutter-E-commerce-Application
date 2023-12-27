import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/promo_image.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonPromoCard extends StatelessWidget {
  const CommonPromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BaseCard(
      // height: Constance.promoCardHight,
      child: Row(
        children: [
          const PromoImage(
            promoImage: ImageAssets.mainImage,
          ),
          _buildCardInfo(context),
        ],
      ),
    );
  }

  Expanded _buildCardInfo(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Personal offer",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles().getText14pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    ),
                  ),
                  Text(
                    "my promo code 2020",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles().getText11pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    ),
                  ),
                ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "6 days remaining",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles().getText11pxTextStyle(
                    color: AppTheme.getColor(ColorType.gray, Constance.isLight),
                  ),
                ),
                Helper().hSizeBox(4),
                CommonPrimaryBtn(
                  width: SizeConfig.screenWidth! * 0.3,
                  btnText: 'Apply',
                  isBig: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
