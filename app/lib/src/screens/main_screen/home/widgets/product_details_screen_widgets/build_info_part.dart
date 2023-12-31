import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_product_rating.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget buildInfoPart() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "H&M",
              style: Styles().getHeadline2TextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
            Text(
              "Short black dress",
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
            const CommonProductRating(rating: 5),
          ]),
          Text(
            "\$19.99",
            style: Styles().getHeadline2TextStyle(
              color: AppTheme.getColor(
                ColorType.text,
                Constance.isLight,
              ),
            ),
          ),
        ],
      ),
      Helper().hSizeBox(SizeConfig.screenHeight! * 0.024),
      Text(
        "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elasticities. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
        style: Styles().getDescriptionTextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ],
  );
}
