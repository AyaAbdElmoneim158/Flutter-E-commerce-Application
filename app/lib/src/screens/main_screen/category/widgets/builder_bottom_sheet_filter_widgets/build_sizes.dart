import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';

Column buildSizes() {
  List<String> sizes = ["XS", "S", "M", "L", "Xl"];
  return Column(
    children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
        child: buildHeaderTextSetting("Sizes"),
      ),
      Container(
        color: AppTheme.getColor(ColorType.white, Constance.isLight),
        padding: EdgeInsets.all(Constance.globalPadding * 1.5),
        child: SizedBox(
          height: 36,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: sizes.length,
              separatorBuilder: (context, index) =>
                  Helper().wSizeBox(Constance.globalPadding * 1.5),
              itemBuilder: (context, index) => Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      // color: AppTheme.getColor(ColorType.background, Constance.isLight),
                      border: Border.all(
                        color: AppTheme.getColor(
                            ColorType.gray, Constance.isLight),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    // padding: const EdgeInsets.all(20),
                    child: Text(
                      sizes[index],
                      style: Styles().getText14pxTextStyle(
                        color: AppTheme.getColor(
                          ColorType.text,
                          Constance.isLight,
                        ),
                      ),
                    ),
                  )),
        ),
      )
    ],
  );
}
