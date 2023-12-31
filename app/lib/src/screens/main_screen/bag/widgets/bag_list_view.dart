import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_bag_product_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/model/order_model.dart';

class BagListView extends StatelessWidget {
  const BagListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
        shrinkWrap: true,
        itemBuilder: (context, index) => CommonBagProductCard(
            orderItem: Order.dummyOrders[0].cartItems[index]),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: Order.dummyOrders[0].cartItems.length);
  }
}
