import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderInfoListView extends StatelessWidget {
  const OrderInfoListView({
    super.key,
    required this.order,
  });
  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildOrderInfoCard(
          infoName: 'Shipping Address:',
          infoValue: order.shippingAddress.address,
        ),
        buildOrderInfoCard(
          infoName: 'Payment method:',
          infoValue: order.paymentMethod,
        ),
        buildOrderInfoCard(
          infoName: 'Delivery method:',
          infoValue: order.deliveryMethod.toString(),
        ),
        buildOrderInfoCard(
          infoName: 'Discount:',
          infoValue: '${order.discount}%',
        ),
        buildOrderInfoCard(
          infoName: 'Total Amount:',
          infoValue: '${order.totalAmount}\$',
        ),
      ],
    );
  }

  Widget buildOrderInfoCard({
    required String infoName,
    required String infoValue,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              infoName,
              style: Styles().getText14pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Text(
              infoValue,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles().getText14pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
