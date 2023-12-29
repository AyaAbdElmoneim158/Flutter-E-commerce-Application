import 'package:flutter/material.dart';
import 'package:app/src/core/utils/size_config.dart';

//
class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool checkVal = true;
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//!Btns****************************************************************
                /*const CommonCircleBtn(icon: Icons.search),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonFilter(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonOutlineBtn(btnText: "btnText"),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonPrimaryBtn(btnText: "btnText", isBig: false),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonSocialBtn(assetName: ImageAssets.googleIcon)*/
//!form****************************************************************
                /*CommonCheckbox(callback: (val) {}, title: "title"),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const SizedBox(width: 200, child: CommonDropdown()),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonLabel(
                  tagBg: AppColors.lightPrimaryColor,
                  tagText: "tagText",
                ),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonPopUp(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonRating(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonSearchBar(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                CommonSwitch(value: false, onChanged: (val) {}),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonTag(tagText: "tagText", styleNumber: 1),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonTextField(
                    labelText: "labelText", hintText: "hintText"),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonAppBar(headline: "headline"),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonBottomNavBar(),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),*/
//!Cards****************************************************************
                /*const BaseCard(
                  childClip: CommonCircleBtn(
                    icon: Icons.search,
                    isBig: false,
                  ),
                  child: Column(
                    children: [
                      Text("quarter"),
                      Text("quarter"),
                    ],
                  ),
                ),*/
                //  ! CommonOrderCard(order: Order.dummyOrders[1]),
                // Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                //! CommonOrderProductCard(orderCartItem: Order.dummyOrders[0].cartItems[1])
                //! CommonPromoCard()
                /*const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),

                const CommonCard,
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
