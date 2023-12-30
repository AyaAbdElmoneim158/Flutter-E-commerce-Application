import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_outline_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget buildBtns() {
  return Material(
    color: AppTheme.getColor(ColorType.white, Constance.isLight),
    child: Padding(
      padding: EdgeInsets.all(Constance.globalPadding * 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: CommonOutlineBtn(btnText: "Discard")),
          Helper().wSizeBox(SizeConfig.screenHeight! * 0.016),
          const Expanded(child: CommonPrimaryBtn(btnText: "Apply"))
        ],
      ),
    ),
  );
}
