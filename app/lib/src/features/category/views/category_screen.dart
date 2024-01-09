import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/features/category/views/widgets/category_tab_bar.dart';
import 'package:app/src/features/category/views/widgets/category_tab_bar_view.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Column(
        children: [
          CommonAppBar(
            headline: AppStrings.categories,
            style: 3,
            action: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          Helper().hSizeBox(Constance.globalPadding * 1),
          CategoryTabBar(controller: controller),
          Helper().hSizeBox(Constance.globalPadding * 1.5),
          CategoryTabBarView(controller: controller),
        ],
      ),
    );
  }
}
