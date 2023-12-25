import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/form/common_checkbox.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonAddressCard extends StatelessWidget {
  const CommonAddressCard({super.key, this.checkBoxCallback});
  final dynamic checkBoxCallback;
  @override
  Widget build(BuildContext context) {
    return BaseCard(
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
                  "John Doe",
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit",
                    style: Styles().getText16pxTextStyle(
                      color: AppTheme.getColor(
                          ColorType.primary, Constance.isLight),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "3 Newbridge Court\n Chino Hills, CA 91709, United States",
              style: Styles().getDescriptionTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            CommonCheckbox(
              callback: (val) {
                if (checkBoxCallback != null) checkBoxCallback(val);
              },
              title: 'Use as the shipping address',
            ),
          ],
        ),
      ),
    );
  }
}
