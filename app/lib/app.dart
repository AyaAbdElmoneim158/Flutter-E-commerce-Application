import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/profile/inner/payment_methods_screen.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      title: Constance.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.getThemeData(true),
      darkTheme: AppTheme.getThemeData(false),
      // onGenerateRoute: AppRouter.onGenerate,
      // initialRoute: Routes.initRoute,
      home: const PaymentMethodsScreen(),
    );
  }
}
