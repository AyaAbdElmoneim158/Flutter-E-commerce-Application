import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.style,
    required this.headline,
  });
  final int style;
  final String headline;

  @override
  Widget build(BuildContext context) {
    return CommonAppBar(headline: headline, style: style);
  }

  @override
  Size get preferredSize =>
      (style == 1) ? const Size.fromHeight(80) : const Size.fromHeight(140);
}
