import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/model/order_item_model.dart';
import 'package:flutter/material.dart';

class CommonOrderProductCard extends StatelessWidget {
  const CommonOrderProductCard({super.key, required this.orderCartItem});
  final OrderItemModel orderCartItem;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CardImageH(imagePath: orderCartItem.itemImage),
          _buildCardInfo(orderCartItem),
        ],
      ),
    );
  }

  Widget _buildCardInfo(OrderItemModel orderCartItem) {
    return Expanded(
      flex: 8,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              orderCartItem.itemName,
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            Row(
              children: [
                buildKeyValueText(key: "Color", value: orderCartItem.itemColor),
                Helper().wSizeBox(8),
                buildKeyValueText(key: "Size", value: orderCartItem.itemSize),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildKeyValueText(
                      key: "Unit", value: orderCartItem.quantity.toString()),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${orderCartItem.price}\$",
                      style: Styles().getText14pxTextStyle(
                        color: AppTheme.getColor(
                            ColorType.text, Constance.isLight),
                      ),
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
