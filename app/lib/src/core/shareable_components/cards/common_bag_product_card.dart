import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonBagProductCard extends StatelessWidget {
  const CommonBagProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pullover",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles().getText16pxTextStyle(
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color:
                          AppTheme.getColor(ColorType.gray, Constance.isLight),
                    ))
              ],
            ),
            Row(
              children: [
                buildKeyValueText(key: "Color: ", value: "Gray"),
                Helper().wSizeBox(8),
                buildKeyValueText(key: "Size: ", value: "L"),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CommonCircleBtn(
                      icon: Icons.minimize,
                      isClicked: false,
                      isGrayIcon: true,
                      isBig: false,
                    ),
                    Helper().wSizeBox(12),
                    Text(
                      "1",
                      style: Styles().getText14pxTextStyle(
                        color: AppTheme.getColor(
                            ColorType.text, Constance.isLight),
                      ),
                    ),
                    Helper().wSizeBox(12),
                    const CommonCircleBtn(
                      icon: Icons.add,
                      isClicked: false,
                      isGrayIcon: true,
                      isBig: false,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "52\$",
                    style: Styles().getText14pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
