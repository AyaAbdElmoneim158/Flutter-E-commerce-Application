import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

SizedBox buildProductImages(List<String> productImages) {
  return SizedBox(
    height: SizeConfig.screenHeight! * 0.66,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: productImages.length,
      itemBuilder: (context, index) => Image.asset(
        productImages[index],
        width: SizeConfig.screenWidth! * 0.80,
        height: SizeConfig.screenHeight! * 0.66,
        fit: BoxFit.cover,
      ),
      separatorBuilder: (context, index) =>
          Helper().wSizeBox(Constance.globalPadding * 0.5),
    ),
  );
}
