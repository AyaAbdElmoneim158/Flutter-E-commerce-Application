import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonLabel extends StatelessWidget {
  const CommonLabel({
    super.key,
    required this.tagBg,
    required this.tagText,
  });

  final Color? tagBg;
  final String? tagText;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
            color: tagBg, borderRadius: BorderRadius.circular(29)),
        child: Text(
          tagText!,
          style: Styles()
              .getText11pxTextStyle(color: AppColors.lightWhiteColor)
              .copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
