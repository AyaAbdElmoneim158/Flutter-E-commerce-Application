import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_outline_btn.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:flutter/material.dart';

Widget buildOrderDetailsBtns() {
  return Column(
    children: [
      Helper().hSizeBox(Constance.globalPadding * 2),
      Row(
        children: [
          const Expanded(
              child: CommonOutlineBtn(
            btnText: 'Reorder',
            isBig: false,
          )),
          Helper().wSizeBox(Constance.globalPadding * 2),
          const Expanded(
            child: CommonPrimaryBtn(
              btnText: 'Leave feedback',
              isBig: false,
            ),
          )
        ],
      ),
    ],
  );
}
