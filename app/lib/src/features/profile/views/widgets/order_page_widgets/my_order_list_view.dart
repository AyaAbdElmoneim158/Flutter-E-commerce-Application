import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_order_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/helper/firestore_helper.dart';

//!-------------------------------------------------------------------
class MyOrderListView extends StatefulWidget {
  const MyOrderListView({
    super.key,
  });

  @override
  State<MyOrderListView> createState() => _MyOrderListViewState();
}

class _MyOrderListViewState extends State<MyOrderListView> {
  @override
  void initState() {
    super.initState();
    getOrders();
  }

  String uid = "89StFOZVKEXG3jJ5Ad8V3iII3mQ2";
  var fireStore = FirestoreHelper.instance;
  // var orders = OrderModel.dummyOrders;
  Stream<List<OrderModel>> getOrders() {
    return fireStore.collectionsStream(
      path: "User/$uid/Orders/",
      builder: (data, documentId) => OrderModel.fromMap(data!, documentId),
    );
  }

  @override
  Widget build(BuildContext context) {
    // var orders = OrderModel.dummyOrders;
    // debugPrint("${orders.length}");

    debugPrint("*1");
    return StreamBuilder<List<OrderModel>>(
        stream: getOrders(),
        builder: (context, snapshot) {
          debugPrint("*2: ${snapshot.connectionState}");

          if (snapshot.connectionState == ConnectionState.active) {
            final orderss = snapshot.data!;
            debugPrint("orders: ${orderss.length}");
            debugPrint("*3");

            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constance.globalPadding),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    CommonOrderCard(order: orderss[index]),
                separatorBuilder: (context, index) =>
                    Helper().hSizeBox(Constance.globalPadding * 1.5),
                itemCount: orderss!.length,
              ),
            );
          } else {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            );
          }
        });
  }
}
