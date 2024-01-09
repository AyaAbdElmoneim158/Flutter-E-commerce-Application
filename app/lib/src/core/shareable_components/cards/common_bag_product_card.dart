import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/model/order_item_model.dart';
import 'package:flutter/material.dart';

class CommonBagProductCard extends StatelessWidget {
  const CommonBagProductCard({
    super.key,
    required this.orderItem,
  });
  final OrderItemModel orderItem;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Row(
        children: [
          Flexible(
            flex: 4,
            child: Image.asset(
              orderItem.itemImage,
              fit: BoxFit.cover,
            ),
          ),
          _buildCardInfo(),
        ],
      ),
    );
  }

  Widget _buildCardInfo() {
    return Flexible(
      flex: 8,
      //! ignore: avoid_unnecessary_containers
      child: SizedBox(
        // height:,
        // color: Colors.green, //ToDo: Solve Hight Problem
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderItem.itemName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles().getText16pxTextStyle(
                      color:
                          AppTheme.getColor(ColorType.text, Constance.isLight),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: AppTheme.getColor(
                            ColorType.gray, Constance.isLight),
                      ))
                ],
              ),
              Row(
                children: [
                  buildKeyValueText(key: "Color: ", value: orderItem.itemColor),
                  Helper().wSizeBox(8),
                  buildKeyValueText(key: "Size: ", value: orderItem.itemColor),
                ],
              ),
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
                        orderItem.quantity.toString(),
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
                      "${orderItem.price}\$",
                      style: Styles().getText14pxTextStyle(
                        color: AppTheme.getColor(
                            ColorType.text, Constance.isLight),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
