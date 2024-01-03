import 'dart:async';

import 'package:app/src/controller/auth_cubit/auth_cubit.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/route/routes.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late TextEditingController emailController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          Timer(const Duration(seconds: 3), () {
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          });
          Helper().showSnakeBar(context, "Check your email address....!");
        }
        if (state is ResetPasswordErrorState) {
          Helper().showSnakeBar(context, state.error);
        }
      },
      builder: (context, state) {
        var cubit = AuthCubit.get(context);

        return Form(
          key: formKey,
          child: Column(
            children: [
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
              Text(
                AppStrings.enterEmail,
                maxLines: 2,
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(
                    ColorType.text,
                    Constance.isLight,
                  ),
                ),
              ),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
              CommonTextField(
                labelText: AppStrings.emailField,
                hintText: AppStrings.emailField,
                controller: emailController,
              ),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
              CommonPrimaryBtn(
                btnText: (state is ResetPasswordLoadingState)
                    ? "Loading..."
                    : AppStrings.send.toUpperCase(),
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    await cubit.resetPassword(
                      email: emailController.text,
                    );
                    debugPrint("Email: ${emailController.text}");
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
