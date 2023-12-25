import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_circle_btn.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_colors.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CardImageV extends StatelessWidget {
  const CardImageV({
    super.key,
    required this.imagePath,
    this.tagText,
    this.tagBg,
    this.isTagged = false,
    this.isDelete = false,
    this.rightIcon = Icons.shopping_bag_sharp,
    this.onTapRightIcon,
    this.onTapDeleteIcon,
    this.isClicked = false,
    this.isGrayIcon = true,
  });
  final String imagePath;
  final String? tagText;
  final Color? tagBg;
  final bool isTagged;
  final bool isDelete;
  final IconData? rightIcon;
  final void Function()? onTapRightIcon;
  final void Function()? onTapDeleteIcon;
  final bool isClicked;
  final bool isGrayIcon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 280,
              width: double.infinity,
            ),
            if (isTagged)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  height: 32,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                      color: tagBg, borderRadius: BorderRadius.circular(29)),
                  child: Text(
                    tagText!,
                    style: Styles()
                        .getText11pxTextStyle(color: AppColors.lightWhiteColor),
                  ),
                ),
              ),
            if (isDelete)
              Positioned(
                top: 9,
                right: 9,
                child: IconButton(
                  onPressed: onTapDeleteIcon,
                  icon: Icon(
                    Icons.one_x_mobiledata,
                    color: AppTheme.getColor(ColorType.gray, Constance.isLight),
                  ),
                ),
              ),
            Positioned(
              bottom: -9,
              right: -9,
              child: CommonCircleBtn(
                onTap: onTapRightIcon,
                icon: rightIcon,
                isBig: false,
                isClicked: isClicked,
                isGrayIcon: isGrayIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
