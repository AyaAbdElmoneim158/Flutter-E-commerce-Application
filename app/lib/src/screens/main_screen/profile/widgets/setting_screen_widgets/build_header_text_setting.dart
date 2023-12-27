import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget buildHeaderTextSetting(String personalInformation,
    [bool isChange = false]) {
  return Padding(
    padding: EdgeInsets.only(bottom: SizeConfig.screenHeight! * 0.016),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          personalInformation,
          style: Styles().getText16pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
        if (isChange)
          Text(
            'Change',
            style: Styles().getText14pxTextStyle(
              color: AppTheme.getColor(
                ColorType.gray,
                Constance.isLight,
              ),
            ),
          ),
      ],
    ),
  );
}
