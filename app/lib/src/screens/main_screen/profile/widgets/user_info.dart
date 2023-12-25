import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 46,
            backgroundImage: const AssetImage(ImageAssets.profileImage),
            backgroundColor: AppTheme.getColor(
              ColorType.background,
              Constance.isLight,
            ),
          ),
          Styles().wSizeBox(SizeConfig.screenHeight! * 0.016),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.profileUserName,
                  style: Styles().getHeadline3TextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                Text(
                  AppStrings.profileUserEmail,
                  style: Styles().getText14pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.gray,
                      Constance.isLight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
