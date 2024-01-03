import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonPrimaryBtn extends StatelessWidget {
  const CommonPrimaryBtn({
    super.key,
    required this.btnText,
    this.isBig = true,
    this.onTap,
    this.hasIcon = false,
    this.icon = Icons.edit,
    this.width,
  });
  final String btnText;
  final bool isBig;
  final void Function()? onTap;
  final bool hasIcon;
  final IconData? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: isBig ? 12 : 8),
        width: isBig
            ? SizeConfig.screenWidth! * 0.85
            : SizeConfig.screenWidth! * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.screenHeight! * 0.025),
          color: AppTheme.getColor(ColorType.primary, Constance.isLight),
          boxShadow: [Styles().getPrimaryBtnBoxShadow()],
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (hasIcon)
              Padding(
                padding:
                    EdgeInsets.only(right: SizeConfig.screenHeight! * 0.08),
                child: Icon(icon, color: AppColors.darkWhiteColor),
              ),
            Text(
              btnText,
              style: Styles()
                  .getText14pxTextStyle(color: AppColors.darkWhiteColor),
            ),
          ],
        )),
      ),
    );
  }
}
