import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_h_list_view.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_header.dart';
import 'package:app/src/screens/main_screen/category/widgets/category_details_screen_widgets/category_details_v_list_view.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CategoryDetailsHeader(title: "Favorites"),
            (Constance.viewList == ViewList.horizontal)
                ? const CategoryDetailsHListView()
                : const CategoryDetailsVListView(),
          ],
        ),
      ),
    );
  }
}
