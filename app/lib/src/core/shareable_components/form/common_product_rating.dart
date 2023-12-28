import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommonProductRating extends StatelessWidget {
  const CommonProductRating({super.key, required this.rating});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 16,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, index) => (index < rating)
          ? const Icon(
              Icons.star_rounded,
              color: AppColors.ratingStarColor,
            )
          : Icon(
              Icons.star_border_rounded,
              color: AppTheme.getColor(ColorType.gray, Constance.isLight),
            ),
      glow: false,
      onRatingUpdate: (val) {},
    );
  }
}
