import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(),
          Column(
            children: [
              SvgPicture.asset("assets/images/bags.svg"),
              Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
              Text(
                "Success!",
                style: Styles().getHeadlineTextStyle(
                  color: AppTheme.getColor(
                    ColorType.text,
                    Constance.isLight,
                  ),
                ),
              ),
              Text(
                "Your order will be delivered soon.\nThank you for choosing our app!",
                style: Styles()
                    .getText14pxTextStyle(
                      color: AppTheme.getColor(
                        ColorType.gray,
                        Constance.isLight,
                      ),
                    )
                    .copyWith(
                      height: 150 / 100,
                    ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(Constance.globalPadding * 1.5),
            child: const CommonPrimaryBtn(btnText: "CONTINUE SHOPPING"),
          ),
        ],
      ),
    );
  }
}
