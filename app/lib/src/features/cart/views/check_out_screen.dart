import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/cards/common_address_card.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/cart/views/widgets/build_checkout_info.dart';
import 'package:app/src/features/cart/views/widgets/build_delivery_method_card.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:app/src/features/profile/views/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppBar(
              headline: "Checkout",
              style: 3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Constance.globalPadding * 1.5),
              child: Column(
                children: [
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.032),
                  buildHeaderTextSetting("Shipping address"),
                  CommonAddressCard(
                    address: ShippingAddressModel.dummyShippingAddress[0],
                    hasCheckBox: false,
                  ),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildHeaderTextSetting("Payment"),
                      Text(
                        "Change",
                        style: Styles().getText14pxTextStyle(
                          color: AppTheme.getColor(
                            ColorType.primary,
                            Constance.isLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImageAssets.mastercardIcon),
                      Helper().wSizeBox(SizeConfig.screenHeight! * 0.016),
                      Text(
                        "* * * * * * * * * * * * 3947",
                        style: Styles().getDescriptionTextStyle(
                          color: AppTheme.getColor(
                            ColorType.text,
                            Constance.isLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                  buildHeaderTextSetting("Delivery method"),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildDeliveryMethodCard(
                            ImageAssets.dhlIcon, "2-3 days"),
                        buildDeliveryMethodCard(
                            ImageAssets.fedexIcon, "2-5 days"),
                        buildDeliveryMethodCard(
                            ImageAssets.uspsIcon, "1-3 days"),
                      ]),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                  Column(
                    children: [
                      buildCheckoutInfo("112", "Order"),
                      Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                      buildCheckoutInfo("15", "Delivery"),
                      Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                      buildCheckoutInfo("127", "Summary"),
                      Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                    ],
                  ),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(Constance.globalPadding * 1.5),
                    // color: AppTheme.getColor(ColorType.white, Constance.isLight),
                    child: const CommonPrimaryBtn(btnText: "SUBMIT ORDER"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
