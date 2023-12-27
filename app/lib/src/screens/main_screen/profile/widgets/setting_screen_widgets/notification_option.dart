import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_switch.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NotificationOption extends StatelessWidget {
  const NotificationOption({
    super.key,
    required this.text,
    this.val = true,
  });
  final String text;
  final bool val;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles().getText14pxTextStyle(
            color: AppTheme.getColor(
              ColorType.text,
              Constance.isLight,
            ),
          ),
        ),
        CommonSwitch(value: val, onChanged: (val) {}),
      ],
    );
  }

  static List<NotificationOption> notificationOptions = const [
    NotificationOption(text: "Sales", val: true),
    NotificationOption(text: "New arrivals"),
    NotificationOption(text: "Delivery status changes"),
  ];
}
