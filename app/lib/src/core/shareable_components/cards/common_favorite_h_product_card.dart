import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class CommonFavoriteHProductCard extends StatelessWidget {
  const CommonFavoriteHProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      childClip: const CommonCircleBtn(
        icon: Icons.shopping_bag,
        isBig: false,
      ),
      child: Row(
        children: [
          CardImageH(
            imagePath: product.images[0],
            tagBg: AppColors.lightPrimaryColor,
            tagText: '${product.discountPercentage}%',
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
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.brand.toUpperCase(),
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            Row(
              children: [
                buildKeyValueText(key: "Color", value: product.colors[0]),
                Helper().wSizeBox(8),
                buildKeyValueText(key: "Size", value: "M"),
              ],
            ),
            Text(
              "${product.price}\$",
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
