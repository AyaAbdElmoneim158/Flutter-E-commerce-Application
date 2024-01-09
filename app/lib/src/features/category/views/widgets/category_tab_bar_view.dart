import 'package:app/src/features/category/views/widgets/category_list_view.dart';
import 'package:flutter/material.dart';

class CategoryTabBarView extends StatelessWidget {
  const CategoryTabBarView({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: controller,
        children: const [
          CategoryListView(),
          Text("Tab2"),
          Text("Tab3"),
        ],
      ),
    );
  }
}
