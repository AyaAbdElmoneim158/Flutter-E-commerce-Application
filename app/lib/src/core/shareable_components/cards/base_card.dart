import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,
    required this.child,
    this.childClip = const SizedBox(),
    this.width,
    this.opacity = 0.08,
    this.isVertical = false,
  });
  final Widget child;
  final Widget childClip;
  final double? width;
  final double opacity;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: isVertical ? Constance.cardHight * 2.3 : Constance.cardHight,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppTheme.getColor(ColorType.card, Constance.isLight),
          boxShadow: [Styles().getCardBoxShadow(opacity: opacity)],
        ),
        child: child,
      ),
      Positioned(bottom: -9, right: -9, child: childClip)
    ]);
  }
}
