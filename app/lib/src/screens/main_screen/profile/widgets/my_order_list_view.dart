import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_order_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/model/order_model.dart';
import 'package:flutter/material.dart';

class MyOrderListView extends StatelessWidget {
  const MyOrderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var orders = Order.dummyOrders;
    debugPrint("${orders.length}");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => CommonOrderCard(order: orders[index]),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: orders.length,
      ),
    );
  }
}
