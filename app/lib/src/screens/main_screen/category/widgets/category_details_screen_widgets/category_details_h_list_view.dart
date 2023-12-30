import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_catalog_h_product_card.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/model/product_model.dart';
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
          itemBuilder: (context, index) => CommonCatalogHProductCard(
            product: Product.dummyProducts[index],
          ),
          separatorBuilder: (context, index) =>
              Helper().hSizeBox(Constance.globalPadding * 1.5),
          itemCount: Product.dummyProducts.length,
        ),
      ),
    );
  }
}
