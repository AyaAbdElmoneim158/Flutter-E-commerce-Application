import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_label.dart';
import 'package:flutter/material.dart';

class CardImageH extends StatelessWidget {
  const CardImageH({
    super.key,
    required this.imagePath,
    this.tagText,
    this.isRight = false,
    this.tagBg,
    this.isTagged = false,
  });
  final String imagePath;
  final String? tagText;
  final Color? tagBg;
  final bool isTagged;
  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isRight ? 6 : 4,
      child: ClipRRect(
        borderRadius: isRight
            ? const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: Constance.cardHight,
              width: double.infinity,
            ),
            if (isTagged)
              Positioned(
                top: 8,
                left: 8,
                child: CommonLabel(
                  tagBg: tagBg,
                  tagText: tagText,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
