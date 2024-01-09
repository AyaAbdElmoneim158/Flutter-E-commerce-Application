import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/features/profile/views/widgets/setting_screen_widgets/notification_option_list_view.dart';
import 'package:app/src/features/profile/views/widgets/setting_screen_widgets/setting_form.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/size_config.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: AppStrings.setting,
              style: 2,
              action: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
              ],
            ),
            const SettingForm(),
            const NotificationOptionListView(),
          ],
        ),
      ),
    );
  }
}
