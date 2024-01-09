import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/build_order_details_btns.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/build_order_details_header.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/build_title.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/order_details_items_list_view.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/order_info_list_view.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({
    super.key,
    required this.order,
  });
  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: "Order Details",
              style: 3,
              action: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildOrderDetailsHeader(order),
                  buildTitle('${order.items.length} items'),
                  OrderDetailsItemsListView(cartItems: order.items),
                  Helper().hSizeBox(Constance.globalPadding),
                  buildTitle('Order information'),
                  OrderInfoListView(order: order),
                  buildOrderDetailsBtns()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
