import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/profile/widgets/profile_screen_widgets/profile_cards_list_view.dart';
import 'package:app/src/screens/main_screen/profile/widgets/profile_screen_widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/theme/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              style: 2,
              headline: AppStrings.myProfile,
              hasLeading: false,
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
            const UserInfo(),
            Helper().hSizeBox(Constance.globalPadding),
            const ProfileCardsListView(),
          ],
        ),
      ),
    );
  }
}
