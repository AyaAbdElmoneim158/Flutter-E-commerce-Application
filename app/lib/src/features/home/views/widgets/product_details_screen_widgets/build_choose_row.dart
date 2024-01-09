import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/shareable_components/form/common_dropdown.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

SizedBox buildChooseRow() {
  return SizedBox(
    height: 40,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: CommonDropdown(
            hintText: "Size",
            genderItems: ["XS", "S", "M", "L", "Xl"],
          ),
        ),
        Helper().wSizeBox(SizeConfig.screenHeight! * 0.024),
        const Expanded(
          child: CommonDropdown(
            hintText: "Color",
            genderItems: ["Black", "White", "red", "green"],
          ),
        ),
        const Expanded(
            child: CommonCircleBtn(
          icon: Icons.favorite_outline,
          isBig: false,
          isClicked: false,
          isGrayIcon: true,
        )),
      ],
    ),
  );
}
