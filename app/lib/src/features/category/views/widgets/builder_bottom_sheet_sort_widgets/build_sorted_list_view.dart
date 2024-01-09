import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildSortedListView extends StatefulWidget {
  const BuildSortedListView({super.key});

  @override
  State<BuildSortedListView> createState() => BuildSortedListViewState();
}

class BuildSortedListViewState extends State<BuildSortedListView> {
  int currentIndex = 0;
  List<String> sortByList = [
    "Popular",
    "Newest",
    "Customer review",
    "Price: highest to low",
    "Price: lowest to high"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(Constance.globalPadding),
          color: AppTheme.getColor(
            (currentIndex == index) ? ColorType.primary : ColorType.background,
            Constance.isLight,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Text(
              sortByList[index],
              style: Styles().getText16pxRegularTextStyle(
                color: AppTheme.getColor(
                  (currentIndex == index) ? ColorType.white : ColorType.text,
                  Constance.isLight,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: sortByList.length,
      ),
    );
  }
}
