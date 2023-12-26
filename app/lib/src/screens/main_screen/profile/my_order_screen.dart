import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/cards/common_order_card.dart';
import 'package:app/src/core/shareable_components/common_app_bar.dart';
import 'package:app/src/core/shareable_components/form/common_tag.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // appBar: CustomAppBar(style: 2, headline: ),
      body: Column(
        children: [
          CommonAppBar(
            headline: AppStrings.myOrder,
            style: 2,
            action: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 24,
                  color: AppTheme.getColor(ColorType.text, Constance.isLight),
                ),
              ),
            ],
          ),
          const OrderTypes(),
          const MyOrderListView(),
        ],
      ),
    );
  }
}

class MyOrderListView extends StatelessWidget {
  const MyOrderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Constance.globalPadding),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => const CommonOrderCard(
            // Take order object from dummy Data
            ),
        separatorBuilder: (context, index) =>
            Helper().hSizeBox(Constance.globalPadding * 1.5),
        itemCount: 3,
      ),
    );
  }
}

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
