import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_main_product_card.dart';
import 'package:app/src/model/product_model.dart';
import 'package:flutter/material.dart';

class CategoryDetailsVListView extends StatelessWidget {
  const CategoryDetailsVListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: Product.dummyProducts.length,
      padding: EdgeInsets.all(Constance.globalPadding),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: Constance.globalPadding,
        crossAxisSpacing: Constance.globalPadding,
        childAspectRatio: 8 / 13.4,
      ),
      itemBuilder: (context, index) => CommonMainProductCard(
        product: Product.dummyProducts[index],
      ),
    );
  }
}
