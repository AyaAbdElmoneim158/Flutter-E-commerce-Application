import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_favorite_h_product_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:flutter/material.dart';

class CategoryDetailsHListView extends StatelessWidget {
  const CategoryDetailsHListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constance.globalPadding),
      child: SizedBox(
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              CommonFavoriteHProductCard(product: ProductModel.dummyClothProducts[index]),
          //  CommonCatalogHProductCard(),
          separatorBuilder: (context, index) =>
              Helper().hSizeBox(Constance.globalPadding * 1.5),
          itemCount: ProductModel.dummyClothProducts.length,
        ),
      ),
    );
  }
}
