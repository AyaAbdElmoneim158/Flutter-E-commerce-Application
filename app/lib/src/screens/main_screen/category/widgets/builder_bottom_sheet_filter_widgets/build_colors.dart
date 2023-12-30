import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';

Column buildColors() {
  List<Color> colors = const [
    Color(0xff020202),
    Color(0xffF6F6F6),
    Color(0xffB82222),
    Color(0xffBEA9A9),
    Color(0xffE2BB8D),
    Color(0xff151867),
  ];
  return Column(
    children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
        child: buildHeaderTextSetting("Colors"),
      ),
      Container(
        color: AppTheme.getColor(ColorType.white, Constance.isLight),
        padding: EdgeInsets.all(Constance.globalPadding * 1.5),
        child: SizedBox(
          height: 36,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              separatorBuilder: (context, index) =>
                  Helper().wSizeBox(Constance.globalPadding * 1.5),
              itemBuilder: (context, index) => CircleAvatar(
                    radius: 18,
                    backgroundColor: colors[index],
                  )),
        ),
      )
    ],
  );
}
