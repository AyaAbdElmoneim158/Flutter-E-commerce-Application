import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonCheckbox extends StatefulWidget {
  const CommonCheckbox({
    Key? key,
    required this.callback,
    required this.title,
    this.activeColor = ColorType.text,
  }) : super(key: key);

  final Function(bool) callback;
  final String title;
  final ColorType activeColor;

  @override
  // ignore: library_private_types_in_public_api
  _CommonCheckboxState createState() => _CommonCheckboxState();
}

class _CommonCheckboxState extends State<CommonCheckbox> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _checkbox,
          onChanged: (value) {
            widget.callback(value!);
            setState(() => _checkbox = !_checkbox);
          },
          activeColor: AppTheme.getColor(widget.activeColor, Constance.isLight),
        ),
        Text(
          widget.title,
          style: Styles().getDescriptionTextStyle(
            color: AppTheme.getColor(ColorType.text, Constance.isLight),
          ),
        ),
      ],
    );
  }
}
