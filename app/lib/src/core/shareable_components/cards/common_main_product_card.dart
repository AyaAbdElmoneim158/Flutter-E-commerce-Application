import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/card_image_v.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonMainProductCard extends StatelessWidget {
  const CommonMainProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      isVertical: true,
      // height: 280,
      width: 162,
      child: Column(
        children: [
          const CardImageV(
            imagePath: ImageAssets.mainImage,
            rightIcon: Icons.favorite_outline,
          ),
          _buildCardInfo(), //sale: 16
        ],
      ),
    );
  }

  Expanded _buildCardInfo({double? sale}) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //!Rating with Package
            Text(
              "Mongo Boy",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            Text(
              "T-Shirt Sailing",
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),

            const Spacer(),
            Row(children: [
              Text(
                "12\$",
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
              Styles().wSizeBox(8),
              if (sale != null)
                Text(
                  "$sale\$",
                  style: Styles()
                      .getText14pxTextStyle(
                        color: AppTheme.getColor(
                            ColorType.primary, Constance.isLight),
                      )
                      .copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                ),
            ]),
          ],
        ),
      ),
    );
  }
}
