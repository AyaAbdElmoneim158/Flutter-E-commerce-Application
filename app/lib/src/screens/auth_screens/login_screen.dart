import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/shareable_components/custom_app_bar.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
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
        appBar: const CustomAppBar(style: 2, headline: AppStrings.login),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Constance.globalPadding),
            child: Column(
              children: [
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                const CommonTextField(
                  labelText: AppStrings.emailField,
                  hintText: AppStrings.emailField,
                ),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
                const CommonTextField(
                  labelText: AppStrings.passwordField,
                  hintText: AppStrings.passwordField,
                ),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.forgetPassword,
                      style: Styles().getText14pxTextStyle(
                        color: AppTheme.getColor(
                          ColorType.text,
                          Constance.isLight,
                        ),
                      ),
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
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
                CommonPrimaryBtn(btnText: AppStrings.login.toUpperCase()),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.164),
                Text(
                  AppStrings.loginWithSocial,
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonSocialBtn(assetName: ImageAssets.googleIcon),
                    Helper().wSizeBox(SizeConfig.screenHeight! * 0.016),
                    const CommonSocialBtn(assetName: ImageAssets.facebookIcon),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
