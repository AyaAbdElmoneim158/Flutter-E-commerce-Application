import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/form/common_checkbox.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:flutter/material.dart';

class CommonAddressCard extends StatelessWidget {
  const CommonAddressCard({
    super.key,
    this.checkBoxCallback,
    required this.address,
    this.hasCheckBox = true,
  });
  final dynamic checkBoxCallback;
  final ShippingAddressModel address;
  final bool hasCheckBox;

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
                  address.fullName,
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit",
                    style: Styles().getText16pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.primary,
                        Constance.isLight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "${address.address}\n ${address.city}, ${address.state} ${address.zipCode} , ${address.country}",
              style: Styles().getDescriptionTextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
            if (hasCheckBox)
              CommonCheckbox(
                callback: (val) {
                  // if (checkBoxCallback != null) checkBoxCallback(val);

                  //! address.isDefault = (address.isDefault) ? false : true;
                },
                title: 'Use as the shipping address',
              ),
          ],
        ),
      ),
    );
  }
}
