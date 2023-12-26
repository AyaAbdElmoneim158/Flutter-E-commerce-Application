import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/order_model.dart';
import 'package:flutter/material.dart';

class CommonOrderProductCard extends StatelessWidget {
  const CommonOrderProductCard({super.key, required this.orderCartItem});
  final OrderCartItem orderCartItem;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Row(
        children: [
          CardImageH(imagePath: orderCartItem.image),
          _buildCardInfo(orderCartItem),
        ],
      ),
    );
  }

  Widget _buildCardInfo(OrderCartItem orderCartItem) {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderCartItem.product,
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            Row(
              children: [
                buildKeyValueText(key: "Color", value: orderCartItem.color),
                Helper().wSizeBox(8),
                buildKeyValueText(key: "Size", value: orderCartItem.size),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildKeyValueText(
                    key: "Unit", value: orderCartItem.quantity.toString()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${orderCartItem.price}\$",
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
