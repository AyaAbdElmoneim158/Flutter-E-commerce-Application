import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_address_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/model/address_model.dart';
import 'package:flutter/material.dart';

class ShippingAddressListView extends StatelessWidget {
  const ShippingAddressListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var addresses = Address.dummyAddresses;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => CommonAddressCard(
          address: addresses[index],
        ),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: addresses.length,
      ),
    );
  }
}
