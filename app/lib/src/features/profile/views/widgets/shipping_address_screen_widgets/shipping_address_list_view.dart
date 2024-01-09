import 'package:app/src/core/constance.dart';
import 'package:app/src/core/helper/firestore_helper.dart';
import 'package:app/src/core/shareable_components/cards/common_address_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:flutter/material.dart';

class ShippingAddressListView extends StatefulWidget {
  const ShippingAddressListView({
    super.key,
  });

  @override
  State<ShippingAddressListView> createState() =>
      _ShippingAddressListViewState();
}

class _ShippingAddressListViewState extends State<ShippingAddressListView> {
  @override
  void initState() {
    super.initState();
    getAddresses();
  }

  String uid = "89StFOZVKEXG3jJ5Ad8V3iII3mQ2";
  var fireStore = FirestoreHelper.instance;
  var addresses = ShippingAddressModel.dummyShippingAddress;
  Stream<List<ShippingAddressModel>> getAddresses() {
    return fireStore.collectionsStream(
      path: "User/$uid/ShippingAddresses/",
      builder: (data, documentId) =>
          ShippingAddressModel.fromMap(data!, documentId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ShippingAddressModel>>(
        stream: getAddresses(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final addresses = snapshot.data;

            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constance.globalPadding),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => CommonAddressCard(
                  address: addresses[index],
                ),
                separatorBuilder: (context, index) =>
                    Helper().hSizeBox(Constance.globalPadding * 1.5),
                itemCount: addresses!.length,
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
