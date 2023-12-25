import 'package:app/src/core/shareable_components/cards/base_card.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonPopUp extends StatelessWidget {
  const CommonPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseCard(
        // height: 96,
        width: 170,
        opacity: 0.14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Add to favorites",
                  style: Styles().getText11pxTextStyle(
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                  selectionColor:
                      AppTheme.getColor(ColorType.primary, Constance.isLight),
                )),
            Divider(
              height: 1,
              thickness: 1,
              color: AppTheme.getColor(ColorType.gray, Constance.isLight),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Delete from the list",
                style: Styles().getText11pxTextStyle(
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
              // selectionColor:AppTheme.getColor(ColorType.primary, Constance.isLight),
            ),
          ],
        ));
  }
}
