import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_main_product_card.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/model/product_model.dart';
import 'package:app/src/screens/main_screen/home/widgets/home_screen_widgets/build_products_header.dart';
import 'package:flutter/material.dart';

class SaleListView extends StatelessWidget {
  const SaleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: Column(
        children: [
          buildProductsHeader(
            desc: AppStrings.superSummerSale,
            type: AppStrings.sale,
          ),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.33,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => CommonMainProductCard(
                product: Product.dummyProducts[index],
              ),
              separatorBuilder: (context, index) =>
                  Helper().wSizeBox(Constance.globalPadding * 1.5),
              itemCount: Product.dummyProducts.length,
            ),
          ),
        ],
      ),
    );
  }
}