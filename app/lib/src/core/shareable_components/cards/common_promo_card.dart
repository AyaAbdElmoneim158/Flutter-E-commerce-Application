import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/promo_image.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/cart/model/coupon_model.dart';
import 'package:flutter/material.dart';

class CommonPromoCard extends StatelessWidget {
  const CommonPromoCard({super.key, required this.coupon});
  final Coupon coupon;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BaseCard(
      // height: Constance.promoCardHight,
      child: Row(
        children: [
          PromoImage(
            promoImage: ImageAssets.mainImage,
            promo: coupon.discount,
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
                    coupon.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles().getText14pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    ),
                  ),
                  Text(
                    coupon.name,
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
                  coupon.expire.toString(),
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
