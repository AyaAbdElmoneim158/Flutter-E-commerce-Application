import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/shareable_components/cards/card_image_h.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/model/category_model.dart';
import 'package:flutter/material.dart';

class CommonCategoryProductCard extends StatelessWidget {
  const CommonCategoryProductCard({
    super.key,
    required this.category,
  });
  final Category category;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Row(
        children: [
          _buildCardInfo(),
          CardImageH(
            // isSvg: true,
            imagePath: category.image,
            isRight: true,
          ),
        ],
      ),
    );
  }

  Expanded _buildCardInfo() {
    return Expanded(
      flex: 7,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              category.name,
              style: Styles().getHeadline3TextStyle(
                color: AppTheme.getColor(ColorType.text, Constance.isLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
