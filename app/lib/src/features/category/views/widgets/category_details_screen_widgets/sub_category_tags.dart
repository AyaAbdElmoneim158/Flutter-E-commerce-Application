import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_tag.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:flutter/material.dart';

class SubCategoryTags extends StatefulWidget {
  const SubCategoryTags({
    super.key,
  });

  @override
  State<SubCategoryTags> createState() => _SubCategoryTagsState();
}

class _SubCategoryTagsState extends State<SubCategoryTags> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> subCategory = [
      "T-shirts",
      "Crop tops",
      "Sleeveless",
      "Shirts"
    ];

    return SizedBox(
      height: 50,
      child: Padding(
        padding: EdgeInsets.only(left: Constance.globalPadding),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => CommonTag(
            tagText: subCategory[index],
            styleNumber: 4, //(currentIndex == index) ? 4 : 3,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          separatorBuilder: (context, index) =>
              Helper().wSizeBox(Constance.globalPadding * 1),
          itemCount: subCategory.length,
        ),
      ),
    );
  }
}
