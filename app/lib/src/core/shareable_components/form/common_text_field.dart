import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/constance.dart';
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
        style: Styles().getText14pxTextStyle(),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          isDense: true,
          filled: true,
          fillColor:
              Constance.isLight ? AppColors.lightWhiteColor : AppColors.dark,

          border: Styles().getBorder(),
          errorBorder: Styles().getErrorBorder(),
          label: Text(labelText),
          hintText: hintText,
          labelStyle: Styles().getText14pxTextStyle(),
          hintStyle: Styles().getText14pxTextStyle(),
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
