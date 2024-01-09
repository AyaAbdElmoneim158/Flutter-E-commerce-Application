import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/my_order_list_view.dart';
import 'package:app/src/features/profile/views/widgets/order_page_widgets/order_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              headline: AppStrings.myOrder,
              style: 2,
              action: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24.w,
                    color: AppTheme.getColor(ColorType.text, Constance.isLight),
                  ),
                ),
              ],
            ),
            const OrderTypes(),
            Helper().hSizeBox(Constance.globalPadding * 1.5),
            const MyOrderListView(),
          ],
        ),
      ),
    );
  }
}
