import 'package:app/src/features/profile/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_bag_product_card.dart';
import 'package:app/src/core/utils/helper.dart';

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
            orderItem: OrderModel.dummyOrders[0].items[index]),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: OrderModel.dummyOrders[0].items.length);
  }
}
