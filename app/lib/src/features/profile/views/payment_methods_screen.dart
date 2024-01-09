import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/views/widgets/payment_methods_screen_widgets/payment_card.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      floatingActionButton: CommonCircleBtn(
        icon: Icons.add,
        isBig: false,
        onTap: () {
          showBottomSheet(
              context: context,
              //! Exception
              builder: (context) => Container(
                    height: 190,
                    width: 100,
                    color: Colors.amber,
                  )
              // buildSettingBottomSheet(context),
              );
          debugPrint("showBottomSheet");
        },
        isGrayIcon: true,
        colorData: ColorType.text,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppBar(
              headline: AppStrings.paymentMethod,
              style: 3,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constance.globalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helper().hSizeBox(Constance.globalPadding * 1.5),
                  Text(
                    'Your payment cards',
                    style: Styles().getText16pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.text,
                        Constance.isLight,
                      ),
                    ),
                  ),
                  Helper().hSizeBox(Constance.globalPadding * 1.5),
                  const PaymentCard(),
                  Helper().hSizeBox(Constance.globalPadding * 1.5),
                  const PaymentCard(color: AppColors.lightGrayColor),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
