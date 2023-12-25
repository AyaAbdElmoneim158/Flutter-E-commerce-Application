import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_outline_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonPrimaryBtn(btnText: "Primary".toUpperCase()),
              Styles().hSizeBox(16),
              CommonPrimaryBtn(btnText: "Primary".toUpperCase(), isBig: false),
              Styles().hSizeBox(16),
              const CommonPrimaryBtn(
                  btnText: 'Write a review', isBig: false, hasIcon: true),
              Styles().hSizeBox(16),
              CommonOutlineBtn(btnText: "outline".toUpperCase()),
              Styles().hSizeBox(16),
              CommonOutlineBtn(btnText: "outline".toUpperCase(), isBig: false),
              Styles().hSizeBox(16),
              const CommonCircleBtn(icon: Icons.search),
              Styles().hSizeBox(16),
              const CommonCircleBtn(
                  icon: Icons.shopping_bag_rounded,
                  isBig: false,
                  isClicked: false),
              Styles().hSizeBox(16),
              const CommonSocialBtn(assetName: ImageAssets.googleIcon),
              Styles().hSizeBox(16),
              const CommonSocialBtn(assetName: ImageAssets.facebookIcon),
            ],
          ),
        ),
      ),
    );
  }
}
