import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_main_product_card.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:app/src/features/home/views/widgets/home_screen_widgets/build_products_header.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/helper/firestore_helper.dart';

class SaleListView extends StatefulWidget {
  const SaleListView({super.key});

  @override
  State<SaleListView> createState() => _SaleListViewState();
}

class _SaleListViewState extends State<SaleListView> {
  @override
  void initState() {
    super.initState();
    getProduct();
  }

  String uid = "89StFOZVKEXG3jJ5Ad8V3iII3mQ2";
  var fireStore = FirestoreHelper.instance;
  // var products = ProductModel.dummyClothProducts;
  Stream<List<ProductModel>> getProduct() {
    return fireStore.collectionsStream(
      path: "Products/",
      builder: (data, documentId) => ProductModel.fromMap(data!, documentId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductModel>>(
        stream: fireStore.collectionsStream(
          path: "Products/",
          builder: (data, documentId) =>
              ProductModel.fromMap(data!, documentId),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final products = snapshot.data;

            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constance.globalPadding),
              child: Column(
                children: [
                  buildProductsHeader(
                    desc: AppStrings.superSummerSale,
                    type: AppStrings.sale,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.37,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => SizedBox(
                        height: SizeConfig.screenHeight! * 0.37,
                        width: 240,
                        child: CommonMainProductCard(
                          product: products[index],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          Helper().wSizeBox(Constance.globalPadding * 1.5),
                      itemCount: products!.length,
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            );
          }
        });
  }
}
