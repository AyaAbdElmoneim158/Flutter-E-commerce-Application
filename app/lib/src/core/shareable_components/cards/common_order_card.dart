import 'package:app/src/core/shareable_components/btns/common_outline_btn.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/build_key_value_text.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/utils/helper.dart';

class CommonOrderCard extends StatelessWidget {
  const CommonOrderCard({super.key, this.checkBoxCallback});
  final dynamic checkBoxCallback;
  @override
  Widget build(BuildContext context) {
    return BaseCard(
      // height: 165,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  "05-12-2019",
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(ColorType.gray, Constance.isLight),
                  ),
                ),
              ],
            ),
            Helper().hSizeBox(Constance.globalPadding),
            Column(
              children: [
                buildKeyValueText(
                    key: "Tracking number: ", value: "IW3475453455"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildKeyValueText(key: "Quantity: ", value: "3"),
                      buildKeyValueText(key: "Total Amount: ", value: "112\$"),
                    ]),
              ],
            ),
            Helper().hSizeBox(Constance.globalPadding),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CommonOutlineBtn(
                btnText: "Details".toUpperCase(),
                isBig: false,
                onTap: () {},
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: Styles().getText16pxTextStyle(
                    color:
                        AppTheme.getColor(ColorType.success, Constance.isLight),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
