import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/card_image_v.dart';
import 'package:app/src/core/shareable_components/form/common_product_rating.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/product_model.dart';
import 'package:flutter/material.dart';

class CommonMainProductCard extends StatelessWidget {
  const CommonMainProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      isVertical: true,
      child: SizedBox(
        height: SizeConfig.screenHeight! * 0.33,
        width: 240,
        child: Column(
          children: [
            CardImageV(
              imagePath: product.imageCover,
              rightIcon: Icons.favorite_outline,
            ),
            _buildCardInfo(product: product), //sale: 16
          ],
        ),
      ),
    );
  }

  Expanded _buildCardInfo({required Product product}) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonProductRating(rating: product.ratingsAverage),
            Text(
              product.brand,
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            Text(
              product.title,
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            Row(children: [
              Text(
                "${product.price}\$",
                style: Styles()
                    .getText14pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    )
                    .copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
              Helper().wSizeBox(8),
              if (product.priceAfterDiscount != 0.0)
                Text("${product.priceAfterDiscount}\$",
                    style: Styles().getText14pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.primary,
                        Constance.isLight,
                      ),
                    )),
            ]),
          ],
        ),
      ),
    );
  }
}
