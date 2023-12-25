import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/custom_app_bar.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: const CustomAppBar(style: 2, headline: AppStrings.forget),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Constance.globalPadding),
            child: Column(
              children: [
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                Text(
                  AppStrings.enterEmail,
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.016),
                const CommonTextField(
                  labelText: AppStrings.emailField,
                  hintText: AppStrings.emailField,
                ),
                Styles().hSizeBox(SizeConfig.screenHeight! * 0.064),
                CommonPrimaryBtn(btnText: AppStrings.send.toUpperCase()),
              ],
            ),
          ),
        ));
  }
}
