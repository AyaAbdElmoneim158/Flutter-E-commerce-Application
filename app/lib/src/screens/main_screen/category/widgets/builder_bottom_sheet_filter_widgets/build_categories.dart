import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/build_header_text_setting.dart';
import 'package:flutter/material.dart';

Column buildCategories() {
  List<String> categories = ["All", "Women", "Man", "Boys", "Girls"];
  return Column(
    children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Constance.globalPadding * 1.5),
        child: buildHeaderTextSetting("Category"),
      ),
      Container(
        color: AppTheme.getColor(ColorType.white, Constance.isLight),
        padding: EdgeInsets.all(Constance.globalPadding * 1.5),
        height: 160,
        child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: Constance.globalPadding,
              crossAxisSpacing: Constance.globalPadding * 1.5,
              childAspectRatio: 2 / 0.85,
            ),
            itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          AppTheme.getColor(ColorType.gray, Constance.isLight),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    categories[index],
                    style: Styles().getText14pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.text,
                        Constance.isLight,
                      ),
                    ),
                  ),
                )),
      )
    ],
  );
}

Column buildGridSizes() {
  List<String> categories = ["XS", "S", "M", "L", "Xl"];
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(Constance.globalPadding * 1.5),
        height: 160,
        child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: Constance.globalPadding,
              crossAxisSpacing: Constance.globalPadding * 1.5,
              childAspectRatio: 2 / 0.85,
            ),
            itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          AppTheme.getColor(ColorType.gray, Constance.isLight),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    categories[index],
                    style: Styles().getText14pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.text,
                        Constance.isLight,
                      ),
                    ),
                  ),
                )),
      )
    ],
  );
}
