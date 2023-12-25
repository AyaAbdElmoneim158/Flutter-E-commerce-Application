import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/shareable_components/cards/card_image_v.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonFavoriteVProductCard extends StatelessWidget {
  const CommonFavoriteVProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      // height: 280,
      width: 162,
      childClip: const CommonCircleBtn(
        icon: Icons.shopping_bag,
        isBig: false,
      ),
      child: Column(
        children: [
          const CardImageV(
            imagePath: ImageAssets.mainImage,
            tagBg: AppColors.lightPrimaryColor,
            tagText: "-30%",
            isTagged: true,
          ),
          _buildCardInfo(),
        ],
      ),
    );
  }

  Container buildTag() => Container();

  Expanded _buildCardInfo() {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //!Rating with Package
            Text(
              "Mongo",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            Text(
              "Longsleeve Violeta",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles()
                  .getText16pxTextStyle(
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  )
                  .copyWith(),
            ),
            Row(
              children: [
                buildKeyValueText(key: "Color: ", value: "Gray"),
                Helper().wSizeBox(8),
                buildKeyValueText(key: "Size: ", value: "L"),
              ],
            ),
            const Spacer(),
            Text(
              "52\$",
              style: Styles().getText14pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
