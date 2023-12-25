import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/shareable_components/custom_app_bar.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: const CustomAppBar(style: 2, headline: "Login"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Constance.globalPadding),
            child: Column(
              children: [
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                const CommonTextField(labelText: "Email", hintText: "Email"),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.012),
                const CommonTextField(
                    labelText: "Password", hintText: "Password"),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: Styles().getText14pxTextStyle(),
                    ),
                    Icon(
                      IconlyBold.arrowRight3,
                      weight: 24,
                      color: AppTheme.getColor(
                        ColorType.primary,
                        Constance.isLight,
                      ),
                    )
                  ],
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                CommonPrimaryBtn(btnText: "Login".toUpperCase()),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.164),
                Text(
                  "Or login with social account",
                  style: Styles().getText14pxTextStyle(),
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonSocialBtn(assetName: ImageAssets.googleIcon),
                    Styles().wSizeBox(SizeConfig.screenHeight! * 0.016),
                    const CommonSocialBtn(assetName: ImageAssets.facebookIcon),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
