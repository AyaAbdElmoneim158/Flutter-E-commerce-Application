import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonSocialBtn extends StatelessWidget {
  const CommonSocialBtn({super.key, required this.assetName});
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.lightWhiteColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: SvgPicture.asset(
          assetName,
          fit: BoxFit.cover,
          width: 24,
        ),
      ),
    );
  }
}
