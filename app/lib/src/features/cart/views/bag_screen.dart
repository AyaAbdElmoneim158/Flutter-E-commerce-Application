import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/cart/views/widgets/bag_list_view.dart';
import 'package:app/src/features/cart/views/widgets/build_enter_promo_code.dart';
import 'package:app/src/features/cart/views/widgets/build_total_amount.dart';
import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: "My Bag",
              style: 2,
              hasLeading: false,
              action: [
                IconButton(
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              height: 300,
                              color: Colors.green,
                            )); // const BuilderBottomSheetPromoCode());
                    debugPrint("showBottomSheet");
                  },
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
              ],
            ),
            const BagListView(),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            //! ToDo: BottomSheet Not work
            buildEnterPromoCode(context),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            buildTotalAmount(),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(Constance.globalPadding * 1.5),
              child: const CommonPrimaryBtn(btnText: "CHECK OUT"),
            ),
          ],
        ),
      ),
    );
  }
}
