import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });
  final String labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.getTextFieldBoxShadow(),
      child: TextField(
        cursorHeight: 13,
        cursorColor: const Color(0xffD9D9D9),
        style: Styles().getText14pxTextStyle(
          color: AppTheme.getColor(ColorType.text, Constance.isLight),
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: SizeConfig.screenHeight! * 0.032,
            horizontal: SizeConfig.screenHeight! * 0.020,
          ),
          isDense: true,
          filled: true,
          fillColor: AppTheme.getColor(ColorType.card, Constance.isLight),
          border: Styles().getBorder(),
          errorBorder: Styles().getErrorBorder(),
          label: Text(labelText),
          hintText: hintText,
          labelStyle: Styles().getText11pxTextStyle(
            color: AppTheme.getColor(ColorType.gray, Constance.isLight),
          ),
          hintStyle: Styles().getText14pxTextStyle(
            color: AppTheme.getColor(ColorType.gray, Constance.isLight),
          ),
          // suffixIcon: const Icon(
          //   Icons.check,
          //   size: 16,
          //   color: AppColors.lightSuccessColor,
          // ),
        ),
      ),
    );
  }
}
