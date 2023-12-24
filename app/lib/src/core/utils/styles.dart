import 'package:app/src/core/utils/app_mixin.dart';
import 'package:flutter/material.dart';

class Styles with TextStyles, TextFieldBorders, SizedBoxes, Shadow {
  static Decoration getTextFieldBoxShadow() => const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.05),
          blurRadius: 8,
          offset: Offset(0, 1),
          spreadRadius: 0,
        )
      ]);
}
