import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/form/common_product_rating.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class CommonMainProductCard extends StatelessWidget {
  const CommonMainProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      isVertical: true,
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Image.network(
                  product.images[0],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  // height: SizeConfig.screenHeight! * 0.03,
                ),
                _buildCardInfo(product: product), //sale: 16
              ],
            ),
            Positioned(
              bottom: 72,
              right: -9,
              child: CommonCircleBtn(
                onTap: () {},
                icon: Icons.favorite_outline,
                isBig: false,
                isClicked: false,
                isGrayIcon: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildCardInfo({required ProductModel product}) {
    return Expanded(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonProductRating(rating: 5), // rating: 5
            Text(
              product.brand,
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              ),
            ),
            Text(
              product.name,
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
              if (product.price != 0.0) //! here
                Text("${product.discountPercentage}\$", //! here
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
