import 'package:app/src/core/shareable_components/form/common_checkbox.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key,
    this.color = AppColors.dark,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 215,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [Styles().getPaymentCardBoxShadow()]),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.asset(ImageAssets.vector),
                // SvgPicture.asset(.wave1),
              ),
              Positioned(
                  top: 0, right: 0, child: Image.asset(ImageAssets.ellipse)),
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(ImageAssets.chipIcon),
                      Text(
                        "* * * * * * * * * * * * 3947",
                        style: Styles().getPaymentNumberCardTextStyle(
                          color: AppTheme.getColor(
                            ColorType.white,
                            Constance.isLight,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Card Holder Name",
                                style: Styles().getText11pxTextStyle(
                                  color: AppTheme.getColor(
                                    ColorType.gray,
                                    Constance.isLight,
                                  ),
                                ),
                              ),
                              Text(
                                "Jennyfer Doe",
                                style: Styles().getText11pxTextStyle(
                                  color: AppTheme.getColor(
                                    ColorType.white,
                                    Constance.isLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                style: Styles().getText11pxTextStyle(
                                  color: AppTheme.getColor(
                                    ColorType.gray,
                                    Constance.isLight,
                                  ),
                                ),
                              ),
                              Text(
                                "05/23",
                                style: Styles().getText11pxTextStyle(
                                  color: AppTheme.getColor(
                                    ColorType.white,
                                    Constance.isLight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(ImageAssets.mastercardIcon),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Helper().hSizeBox(Constance.globalPadding * 1.5),
        CommonCheckbox(
          callback: (val) {},
          title: 'Use as default payment method',
        ),
      ],
    );
  }
}
