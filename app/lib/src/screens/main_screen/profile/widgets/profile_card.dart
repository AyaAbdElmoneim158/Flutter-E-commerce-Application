import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/screens/main_screen/profile/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.model});
  final ProfileModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {}, //! ToDo: => Navigator.pushNamed(context, model.url),
        child: Container(
          color: AppTheme.getColor(
            ColorType.background,
            Constance.isLight,
          ),
          padding: EdgeInsets.all(Constance.globalPadding),
          child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: AppTheme.getColor(
                ColorType.gray,
                Constance.isLight,
              ),
              size: 12,
            ),
            title: Text(
              model.name,
              style: Styles().getText16pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
            subtitle: Text(
              model.desc,
              style: Styles().getText11pxTextStyle(
                color: AppTheme.getColor(
                  ColorType.gray,
                  Constance.isLight,
                ),
              ),
            ),
          ),
        ));
  }
}
