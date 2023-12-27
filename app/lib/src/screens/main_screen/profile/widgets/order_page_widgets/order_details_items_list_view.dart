import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_order_product_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderDetailsItemsListView extends StatelessWidget {
  const OrderDetailsItemsListView({
    super.key,
    required this.cartItems,
  });
  final List<OrderCartItem> cartItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => CommonOrderProductCard(
        orderCartItem: cartItems[index],
      ),
      separatorBuilder: (context, index) => Helper().hSizeBox(
        Constance.globalPadding * 1.5,
      ),
      itemCount: cartItems.length,
    );
  }
}
