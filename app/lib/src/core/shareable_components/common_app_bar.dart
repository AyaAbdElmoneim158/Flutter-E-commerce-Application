import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    this.style = 1,
    required this.headline,
    this.hasLeading = true,
    this.action,
  });
  final int style;
  final String headline;
  final bool hasLeading;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (style == 1)
          ? SizeConfig.screenHeight! * 0.080
          : SizeConfig.screenHeight! * 0.140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              (action == null)
                  ? const SizedBox()
                  : SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: action!,
                      ),
                    )
            ],
          ),
          (style == 2)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
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
