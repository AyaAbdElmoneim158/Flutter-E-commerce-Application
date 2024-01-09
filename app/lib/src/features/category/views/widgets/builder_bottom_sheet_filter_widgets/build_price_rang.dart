import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/features/profile/views/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';

Column buildPriceRang() {
  return Column(
    children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
        child: buildHeaderTextSetting("Price range"),
      ),
      //!Slider ......................................................
      Container(
        color: AppTheme.getColor(ColorType.white, Constance.isLight),
        padding: EdgeInsets.symmetric(vertical: Constance.globalPadding * 1.5),
        child: Slider(
          value: 78,
          onChanged: (val) {},
          max: 1000,
          activeColor: AppTheme.getColor(ColorType.primary, Constance.isLight),
        ),
      )
    ],
  );
}
