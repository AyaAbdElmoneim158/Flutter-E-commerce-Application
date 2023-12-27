import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';

class SettingForm extends StatelessWidget {
  const SettingForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: Form(
        child: Column(
          children: [
            buildHeaderTextSetting(AppStrings.personalInformation),
            const CommonTextField(
              labelText: AppStrings.fullNameField,
              hintText: AppStrings.fullNameField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
            const CommonTextField(
              labelText: AppStrings.dateOfBirthField,
              hintText: AppStrings.dateOfBirthField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.048),
            buildHeaderTextSetting(AppStrings.passwordField, true),
            const CommonTextField(
              labelText: AppStrings.passwordField,
              hintText: AppStrings.passwordField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.048),
            buildHeaderTextSetting(AppStrings.notifications),
          ],
        ),
      ),
    );
  }
}
