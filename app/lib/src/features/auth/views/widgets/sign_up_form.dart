import 'dart:async';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late TextEditingController nameController = TextEditingController();
    late TextEditingController emailController = TextEditingController();
    late TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is RegisterUserSuccessState) {
        Timer(const Duration(seconds: 3), () {
          Navigator.pop(context);
          // Navigator.pushReplacementNamed(context, Routes.loginRoute);
        });
      }
      if (state is RegisterUserErrorState) {
        Helper().showSnakeBar(context, state.error);
      }
    }, builder: (context, state) {
      var cubit = AuthCubit.get(context);
      return Form(
        key: formKey,
        child: Column(
          children: [
            CommonTextField(
              labelText: AppStrings.nameField,
              hintText: AppStrings.nameField,
              controller: nameController,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            CommonTextField(
              labelText: AppStrings.emailField,
              hintText: AppStrings.emailField,
              controller: emailController,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            CommonTextField(
              labelText: AppStrings.passwordField,
              hintText: AppStrings.passwordField,
              controller: passwordController,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
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
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
            CommonPrimaryBtn(
              btnText: (state is RegisterUserLoadingState)
                  ? "Loading..."
                  : AppStrings.signUp.toUpperCase(),
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  await cubit.registerUser(
                    email: emailController.text,
                    password: passwordController.text,
                    name: nameController.text,
                  );
                  debugPrint(
                      "Email: ${emailController.text}, password: ${passwordController.text}");
                }
              },
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.164),
            InkWell(
              onTap: () {
                // Navigator.pushReplacementNamed(context, Routes.loginRoute);
                Navigator.pop(context);
              },
              child: Text(
                AppStrings.signUpWithSocial,
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(
                    ColorType.text,
                    Constance.isLight,
                  ),
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
            ),
          ],
        ),
      );
    });
  }
}
