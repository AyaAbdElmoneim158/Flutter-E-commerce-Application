import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.labelText,
    required this.hintText,
     this.controller,
     this.validator,
  });
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Styles.getTextFieldBoxShadow(),
      child: TextFormField(
        controller: controller,
        validator: validator,
        cursorColor: const Color(0xffD9D9D9),
        style: Styles().getText14pxTextStyle(
          color: AppTheme.getColor(ColorType.text, Constance.isLight),
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 28,
            horizontal: 16,
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
        ),
      ),
    );
  }
}
