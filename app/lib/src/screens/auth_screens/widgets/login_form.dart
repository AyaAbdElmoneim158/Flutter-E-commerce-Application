import 'dart:async';

import 'package:app/src/controller/auth_cubit/auth_cubit.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/route/routes.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_social_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late TextEditingController emailController = TextEditingController();
    late TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginUserSuccessState ||
            state is SignInUserWithGoogleSuccessState) {
          Timer(const Duration(seconds: 3), () {
            Navigator.pushReplacementNamed(context, Routes.mainRoute);
          });
        }
        if (state is LoginUserErrorState) {
          Helper().showSnakeBar(context, state.error);
        }
        if (state is SignInUserWithGoogleErrorState) {
          Helper().showSnakeBar(context, state.error);
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);

        return Form(
          key: formKey,
          child: Column(
            children: [
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
                  Navigator.pushNamed(context, Routes.forgetPasswordRoute);
                },
                child: Row(
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
              ),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
              CommonPrimaryBtn(
                btnText: (state is LoginUserLoadingState)
                    ? "Loading..."
                    : AppStrings.login.toUpperCase(),
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    await cubit.loginUser(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    debugPrint(
                        "Email: ${emailController.text}, password: ${passwordController.text}");

                    // Timer();
                  }
                },
              ),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.164),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.registerRoute);
                },
                child: Text(
                  AppStrings.loginWithSocial,
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
                  CommonSocialBtn(
                    assetName: ImageAssets.googleIcon,
                    onTap: () async {
                      await cubit.signInUserWithGoogle();
                    },
                  ),
                  Helper().wSizeBox(SizeConfig.screenHeight! * 0.016),
                  const CommonSocialBtn(assetName: ImageAssets.facebookIcon),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
