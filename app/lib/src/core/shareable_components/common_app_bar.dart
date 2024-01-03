import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    this.style = 1,
    required this.headline,
    this.hasLeading = true,
    this.action,
    this.bgColor = ColorType.background,
  });
  final int style;
  final String headline;
  final bool hasLeading;
  final List<Widget>? action;
  final ColorType bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppTheme.getColor(ColorType.background, Constance.isLight),
        boxShadow: (style == 3) ? [Styles().getAppBarBoxShadow()] : [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (hasLeading)
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
              (style == 3)
                  ? Text(
                      headline,
                      style: Styles().getHeadline3TextStyle(
                          color: AppTheme.getColor(
                              ColorType.text, Constance.isLight)),
                    )
                  : const SizedBox(),
              (action == null) ? const SizedBox() : Row(children: action!)
            ],
          ),
          (style == 2)
              ? Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  child: Text(
                    headline,
                    style: Styles().getHeadlineTextStyle(
                        color: AppTheme.getColor(
                            ColorType.text, Constance.isLight)),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
