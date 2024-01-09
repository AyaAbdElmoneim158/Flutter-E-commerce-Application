import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/home/views/widgets/home_screen_widgets/build_home_cover.dart';
import 'package:app/src/features/home/views/widgets/home_screen_widgets/new_list_view.dart';
import 'package:app/src/features/home/views/widgets/home_screen_widgets/sale_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHomeCover(),
            const SaleListView(),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.032),
            const NewListView()
          ],
        ),
      ),
    );
  }
}
