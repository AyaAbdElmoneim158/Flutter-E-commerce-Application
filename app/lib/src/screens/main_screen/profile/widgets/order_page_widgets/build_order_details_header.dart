import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/order_model.dart';
import 'package:flutter/material.dart';

Column buildOrderDetailsHeader(Order order) {
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Order №1947034",
          style: Styles().getText16pxTextStyle(
            color: AppTheme.getColor(ColorType.text, Constance.isLight),
          ),
        ),
        Text(
          "${order.createdAt}",
          style: Styles().getText14pxTextStyle(
            color: AppTheme.getColor(ColorType.gray, Constance.isLight),
          ),
        ),
      ],
    ),
    Helper().hSizeBox(Constance.globalPadding),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildKeyValueText(key: "Tracking number", value: "IW3475453455"),
        TextButton(
          onPressed: () {},
          child: Text(
            "Delivered",
            style: Styles().getText14pxTextStyle(
              color: AppTheme.getColor(ColorType.success, Constance.isLight),
            ),
          ),
        ),
      ],
    ),
    Helper().hSizeBox(Constance.globalPadding),
  ]);
}
