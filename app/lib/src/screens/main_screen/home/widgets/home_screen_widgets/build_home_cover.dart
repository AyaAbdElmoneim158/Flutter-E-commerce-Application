import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Stack buildHomeCover() {
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      Image.asset(
        ImageAssets.banner2Image,
        height: SizeConfig.screenHeight! * 0.3,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        height: SizeConfig.screenHeight! * 0.3,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 0, 0, 0),
              Color.fromRGBO(0, 0, 0, 0.73),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
          left: 16,
        ),
        child: Text(
          AppStrings.streetClothes,
          style: Styles().getHeadlineHomeTextStyle(
            fontSize: 34,
            color: AppTheme.getColor(
              ColorType.white,
              Constance.isLight,
            ),
          ),
        ),
      ),
    ],
  );
}
