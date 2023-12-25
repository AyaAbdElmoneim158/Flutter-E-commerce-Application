import 'package:app/src/core/shareable_components/cards/common_address_card.dart';
import 'package:app/src/core/shareable_components/cards/common_catalog_h_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_category_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_favorite_h_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_main_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_order_card.dart';
import 'package:app/src/core/shareable_components/cards/common_order_product_card.dart';
import 'package:app/src/core/shareable_components/cards/common_promo_card.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool checkVal = true;
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Styles().hSizeBox(16),
                const CommonCatalogHProductCard(),
                Styles().hSizeBox(16),
                const CommonOrderProductCard(),
                Styles().hSizeBox(16),
                const CommonCategoryProductCard(),
                Styles().hSizeBox(16),
                const CommonFavoriteHProductCard(),
                Styles().hSizeBox(16),
                const CommonPromoCard(),
                CommonAddressCard(
                  checkBoxCallback: (val) {
                    setState(() {
                      checkVal = val;
                    });
                  },
                ),
                const CommonOrderCard(),
                Styles().hSizeBox(16),
                const CommonMainProductCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
