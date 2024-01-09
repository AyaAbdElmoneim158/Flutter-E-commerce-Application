import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:flutter/material.dart';

Padding buildTotalAmount() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Total amount:",
        style: Styles().getText14pxTextStyle(
          color: AppTheme.getColor(
            ColorType.gray,
            Constance.isLight,
          ),
        ),
      ),
      Text(
        '${getTotalAmount()}\$',
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ]),
  );
}

double getTotalAmount() {
  double sum = 0;
  debugPrint("#1");
  for (var item in OrderModel.dummyOrders[0].items) {
    sum += item.price;
    debugPrint("price: ${item.price}");
    debugPrint("#2");
  }

  debugPrint("getTotalAmount: $sum");
  debugPrint("#3");
  return sum;
}
