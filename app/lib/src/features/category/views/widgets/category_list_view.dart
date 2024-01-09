import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_category_product_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/features/category/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constance.globalPadding),
      child: SizedBox(
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
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
