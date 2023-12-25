import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonCatalogHProductCard extends StatelessWidget {
  const CommonCatalogHProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      height: double.minPositive,
      childClip: const CommonCircleBtn(
        icon: Icons.favorite_outline,
        isBig: false,
        isClicked: false,
        isGrayIcon: true,
      ),
      child: Row(
        children: [
          const CardImageH(imagePath: ImageAssets.mainImage),
          _buildCardInfo(),
        ],
      ),
    );
  }

  Expanded _buildCardInfo() {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pullover",
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            Text(
              "Mongo",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            //!Rating with Package
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "52\$",
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
