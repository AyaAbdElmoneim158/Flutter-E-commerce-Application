import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CommonBottomNavBar extends StatefulWidget {
  const CommonBottomNavBar({super.key});

  @override
  State<CommonBottomNavBar> createState() => _CommonBottomNavBarState();
}

class _CommonBottomNavBarState extends State<CommonBottomNavBar> {
  int currentIndex = 0;
  List<BottomNavigationBarItem> items() => const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.shoppingCart),
          label: "Shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.shoppingBag),
          label: "Bag",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.heart),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          label: "Profile",
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [Styles().getNavBarBoxShadow()],
        color: AppTheme.getColor(ColorType.success, Constance.isLight),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        // AppTheme.getColor(ColorType.success, Constance.isLight),
        selectedItemColor:
            AppTheme.getColor(ColorType.primary, Constance.isLight),
        unselectedItemColor:
            AppTheme.getColor(ColorType.gray, Constance.isLight),
        currentIndex: currentIndex,
        iconSize: 30,
        items: items(),
        onTap: (val) {
          currentIndex = val;
          setState(() {});
          debugPrint("Val: $val, currentIndex: $currentIndex");
        },
      ),
    );
  }
}
