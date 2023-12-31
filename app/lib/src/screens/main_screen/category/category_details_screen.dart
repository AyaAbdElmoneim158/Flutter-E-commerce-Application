import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_h_list_view.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_header.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_v_list_view.dart';
import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatefulWidget {
  const CategoryDetailsScreen({super.key});

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CategoryDetailsHeader(title: "Women's tops"),
            (Constance.viewList == ViewList.horizontal)
                ? const CategoryDetailsHListView()
                : const CategoryDetailsVListView(),
          ],
        ),
      ),
    );
  }
}
