import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/form/common_tag.dart';
import 'package:flutter/material.dart';

class OrderTypes extends StatefulWidget {
  const OrderTypes({
    super.key,
  });

  @override
  State<OrderTypes> createState() => _OrderTypesState();
}

class _OrderTypesState extends State<OrderTypes> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Constance.globalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CommonTag(
            tagText: "Delivered",
            styleNumber: (currentIndex == 0) ? 4 : 3,
            onTap: () {
              setState(() {
                currentIndex = 0;
                //Get Filtration just to Delivered
              });
            },
          ),
          CommonTag(
            tagText: "Processing",
            styleNumber: (currentIndex == 1) ? 4 : 3,
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
          ),
          CommonTag(
            tagText: "Cancelled",
            styleNumber: (currentIndex == 2) ? 4 : 3,
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
