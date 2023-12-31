import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommonRating extends StatefulWidget {
  const CommonRating({super.key});

  @override
  State<CommonRating> createState() => _CommonRatingState();
}

class _CommonRatingState extends State<CommonRating> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, index) => (index < rating)
          ? const Icon(
              Icons.star_rounded,
              color: AppColors.ratingStarColor,
              size: 14,
            )
          : Icon(
              Icons.star_border_rounded,
              color: AppTheme.getColor(ColorType.gray, Constance.isLight),
              size: 14,
            ),
      glow: false,
      onRatingUpdate: (val) {
        debugPrint(val.toString());
        setState(() {
          rating = val;
        });
      },
    );
  }
}
