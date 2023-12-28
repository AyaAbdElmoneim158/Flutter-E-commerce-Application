import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonOutlineBtn extends StatelessWidget {
  const CommonOutlineBtn({
    super.key,
    required this.btnText,
    this.isBig = true,
    this.onTap,
  });
  final String btnText;
  final bool isBig;
  final void Function()? onTap;

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
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              width: 1.5,
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              )),
          color: AppTheme.getColor(ColorType.background, Constance.isLight),
        ),
        child: Center(
            child: Text(
          btnText,
          style: Styles().getText14pxTextStyle(
              color: AppTheme.getColor(ColorType.text, Constance.isLight)),
        )),
      ),
    );
  }
}
