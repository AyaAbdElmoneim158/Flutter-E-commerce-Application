import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

BaseCard buildDeliveryMethodCard(String methodImage, String time) {
  return BaseCard(
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Constance.globalPadding * 2.5,
        vertical: Constance.globalPadding,
      ),
      child: Column(
        children: [
          SvgPicture.asset(methodImage),
          Helper().hSizeBox(SizeConfig.screenHeight! * 0.004),
          Text(
            time,
            style: Styles().getText11pxTextStyle(
              color: AppTheme.getColor(
                ColorType.gray,
                Constance.isLight,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
