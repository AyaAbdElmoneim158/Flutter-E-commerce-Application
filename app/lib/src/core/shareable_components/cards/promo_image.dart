import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PromoImage extends StatelessWidget {
  const PromoImage({super.key, this.promo = 10, this.promoImage});
  final int promo;
  final String? promoImage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.center,
        height: Constance.promoCardHight * 1.6,
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: AppTheme.getColor(ColorType.primary, Constance.isLight),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          image: (promoImage != null)
              ? DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    promoImage!,
                  ),
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              promo.toString(),
              style: Styles().getHeadlineTextStyle(
                color: AppTheme.getColor(ColorType.white, Constance.isLight),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "%",
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(ColorType.white, Constance.isLight),
                ),
              ),
              Text(
                "off",
                style: Styles().getText14pxTextStyle(
                  color: AppTheme.getColor(ColorType.white, Constance.isLight),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
