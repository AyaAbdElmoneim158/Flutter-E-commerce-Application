import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/shareable_components/custom_app_bar.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: const CustomAppBar(style: 2, headline: "Sign up"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Constance.globalPadding),
            child: Column(
              children: [
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                const CommonTextField(
                  labelText: AppStrings.nameField,
                  hintText: AppStrings.nameField,
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.012),
                const CommonTextField(
                  labelText: AppStrings.emailField,
                  hintText: AppStrings.emailField,
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.012),
                const CommonTextField(
                  labelText: AppStrings.passwordField,
                  hintText: AppStrings.passwordField,
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.016),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.haveAccount,
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
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                CommonPrimaryBtn(btnText: AppStrings.signUp.toUpperCase()),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.164),
                Text(
                  AppStrings.signUpWithSocial,
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
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
