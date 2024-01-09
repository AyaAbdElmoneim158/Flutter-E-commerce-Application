import 'package:app/src/features/profile/views/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';

Widget buildSettingBottomSheet(context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppTheme.getColor(ColorType.background, Constance.isLight),
        boxShadow: [Styles().getBottomSheetBoxShadow()]),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
        Center(
          child: Container(
            width: 60,
            height: 6,
            decoration: BoxDecoration(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(3))),
          ),
        ),
        Text(
          AppStrings.passwordChange,
          style: Styles().getHeadline3TextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
        Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
        const CommonTextField(
          labelText: AppStrings.oldPasswordField,
          hintText: AppStrings.oldPasswordField,
        ),
        buildHeaderTextSetting(
          '',
          true,
          () {},
          'Forgot Password?',
        ),
        const CommonTextField(
          labelText: AppStrings.newPasswordField,
          hintText: AppStrings.newPasswordField,
        ),
        Helper().hSizeBox(SizeConfig.screenHeight! * 0.032),
        const CommonTextField(
          labelText: AppStrings.repeatNewPasswordField,
          hintText: AppStrings.repeatNewPasswordField,
        ),
        Helper().hSizeBox(SizeConfig.screenHeight! * 0.032),
        const CommonPrimaryBtn(btnText: AppStrings.savePassword),
        Helper().hSizeBox(SizeConfig.screenHeight! * 0.032),
      ],
    ),
  );
}
