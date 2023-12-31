import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_filter.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/sub_category_tags.dart';
import 'package:flutter/material.dart';

class CategoryDetailsHeader extends StatelessWidget {
  const CategoryDetailsHeader({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.getColor(
        ColorType.background,
        Constance.isLight,
      ),
      child: Column(
        children: [
          CommonAppBar(
            headline: title,
            style: 2,
            action: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            bgColor: ColorType.white,
          ),
          const SubCategoryTags(),
          Helper().hSizeBox(Constance.globalPadding * 1),
          Padding(
            padding: EdgeInsets.all(Constance.globalPadding),
            child: const CommonFilter(),
          )
        ],
      ),
    );
  }
}
