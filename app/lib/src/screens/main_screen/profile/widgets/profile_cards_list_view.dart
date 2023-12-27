import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/model/profile_model.dart';
import 'package:app/src/screens/main_screen/profile/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileCardsListView extends StatelessWidget {
  const ProfileCardsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cards = ProfileModel.profileCards;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => ProfileCard(model: cards[index]),
      separatorBuilder: (context, index) => Divider(
        height: 0.07,
        thickness: 0.07,
        color: AppTheme.getColor(
          ColorType.gray,
          Constance.isLight,
        ),
      ),
      itemCount: cards.length,
    );
  }
}
