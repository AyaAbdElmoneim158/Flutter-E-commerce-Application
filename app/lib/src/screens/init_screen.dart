import 'package:app/src/core/shareable_components/btns/common_outline_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/cards/common_main_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_promo_card.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CommonOutlineBtn(btnText: "Btn"),
                const SizedBox(height: 16),
                const CommonPrimaryBtn(btnText: "Btn"),
                const SizedBox(height: 16),
                const CommonPromoCard(),
                const SizedBox(height: 16),
                const CommonMainProductCard(),
                const SizedBox(height: 16),
                const CommonPromoCard(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: SizeConfig.screenHeight! * 0.016,
                        color: AppColors.darkBackgroundColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: Container(
                        height: 16,
                        color: AppColors.darkBackgroundColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
