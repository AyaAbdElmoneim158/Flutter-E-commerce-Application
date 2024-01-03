import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/auth_screens/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(Constance.globalPadding),
        child: Column(
          children: [
            const CommonAppBar(style: 2, headline: AppStrings.login),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
            const LoginForm(),
          ],
        ),
      ),
    ));
  }
}
