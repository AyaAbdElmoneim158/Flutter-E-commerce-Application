import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/shareable_components/form/common_product_rating.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class CommonCatalogHProductCard extends StatelessWidget {
  const CommonCatalogHProductCard({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      childClip: const CommonCircleBtn(
        icon: Icons.favorite_outline,
        isBig: false,
        isClicked: false,
        isGrayIcon: true,
      ),
      child: Row(
        children: [
          CardImageH(imagePath: product.images[0]),
          _buildCardInfo(),
        ],
      ),
    );
  }

  Expanded _buildCardInfo() {
    return Expanded(
      flex: 8,
      // ignore: avoid_unnecessary_containers
      child: Container(
        // color: Colors.green, //ToDo:
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: Styles().getText16pxTextStyle(
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
              Text(
                product.brand,
                style: Styles().getText11pxTextStyle(
                  color: AppTheme.getColor(ColorType.gray, Constance.isLight),
                ),
              ),
              const CommonProductRating(rating: 4),
              Text(
                "${product.price}\$",
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
