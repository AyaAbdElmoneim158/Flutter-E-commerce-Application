import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/media_query_values.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonPrimaryBtn extends StatelessWidget {
  const CommonPrimaryBtn(
      {super.key,
      required this.btnText,
      this.isBig = true,
      this.onTap,
      this.hasIcon = false,
      this.icon = Icons.edit,
      this.width});
  final String btnText;
  final bool isBig;
  final void Function()? onTap;
  final bool hasIcon;
  final IconData? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: isBig ? 48 : 36,
        width: (width != null)
            ? width
            : isBig
                ? context.width * 0.85
                : context.width * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
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
                padding: const EdgeInsets.only(right: 8),
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
