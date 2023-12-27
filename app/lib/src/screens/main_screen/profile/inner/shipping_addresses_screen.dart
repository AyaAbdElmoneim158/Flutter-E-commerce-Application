import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/screens/main_screen/profile/widgets/shipping_address_screen_widgets/shipping_address_list_view.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/size_config.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButton: CommonCircleBtn(
        icon: Icons.add,
        isBig: false,
        onTap: () {},
        isGrayIcon: true,
        colorData: ColorType.text,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppBar(
              headline: AppStrings.shippingAddresses,
              style: 3,
            ),
            Helper().hSizeBox(Constance.globalPadding * 1.5),
            const ShippingAddressListView(),
          ],
        ),
      ),
    );
  }
}
