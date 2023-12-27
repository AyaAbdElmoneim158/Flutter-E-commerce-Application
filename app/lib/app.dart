import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/profile/inner/setting_screen.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/setting_form.dart';

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
      home: const SettingScreen(),
    );
  }
}
