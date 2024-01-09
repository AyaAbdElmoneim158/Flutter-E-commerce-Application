import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/home/views/widgets/home_screen_widgets/sale_list_view.dart';
import 'package:app/src/features/home/views/widgets/product_details_screen_widgets/build_choose_row.dart';
import 'package:app/src/features/home/views/widgets/product_details_screen_widgets/build_info_part.dart';
import 'package:app/src/features/home/views/widgets/product_details_screen_widgets/build_product_images.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    List<String> productImages = [
      ImageAssets.product7Image,
      ImageAssets.product10Image,
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: "Short dress",
              style: 3,
              action: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
              // bgColor: ColorType.white,
            ),
            buildProductImages(productImages),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constance.globalPadding),
              child: Column(
                children: [
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                  buildChooseRow(),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                  buildInfoPart(),
                  Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
                  const SaleListView(),
                ],
              ),
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(Constance.globalPadding * 1.5),
              color: AppTheme.getColor(ColorType.card, Constance.isLight),
              child: const CommonPrimaryBtn(btnText: "ADD TO CART"),
            ),
          ],
        ),
      ),
    );
  }
}
