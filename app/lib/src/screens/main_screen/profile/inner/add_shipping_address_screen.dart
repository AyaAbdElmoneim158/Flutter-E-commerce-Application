import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/screens/main_screen/profile/widgets/shipping_address_screen_widgets/add_shipping_address_form.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/size_config.dart';

class AddShippingAddressScreen extends StatelessWidget {
  const AddShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppBar(
              headline: AppStrings.addShippingAddresses,
              style: 3,
            ),
            Helper().hSizeBox(Constance.globalPadding * 2.5),
            const AddShippingAddressForm(),
          ],
        ),
      ),
    );
  }
}
