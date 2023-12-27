import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/screens/main_screen/profile/widgets/setting_screen_widgets/notification_option.dart';
import 'package:flutter/material.dart';

class NotificationOptionListView extends StatelessWidget {
  const NotificationOptionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var options = NotificationOption.notificationOptions;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => NotificationOption(
          text: options[index].text,
          val: options[index].val,
        ),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: options.length,
      ),
    );
  }
}
