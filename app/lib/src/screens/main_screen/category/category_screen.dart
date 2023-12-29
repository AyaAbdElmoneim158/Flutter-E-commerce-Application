import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_category_product_card.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: AppStrings.categories,
              style: 3,
              action: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
            /*TabBar(
              dividerColor: AppTheme.getColor(
                ColorType.primary,
                Constance.isLight,
              ),
              tabs: [
                Text(
                  "Woman",
                  style: Styles().getText16pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                Text(
                  "Man",
                  style: Styles().getText16pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
                Text(
                  "Kids",
                  style: Styles().getText16pxTextStyle(
                    color: AppTheme.getColor(
                      ColorType.text,
                      Constance.isLight,
                    ),
                  ),
                ),
              ],
            ),*/
            Helper().hSizeBox(Constance.globalPadding * 1.5),
            const CategoryListView(),
          ],
        ),
      ),
    );
  }
}

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: SizedBox(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) => CommonCategoryProductCard(
            category: Category.dummyCategories[index],
          ),
          separatorBuilder: (context, index) =>
              Helper().hSizeBox(Constance.globalPadding * 1.5),
          itemCount: Category.dummyCategories.length,
        ),
      ),
    );
  }
}
