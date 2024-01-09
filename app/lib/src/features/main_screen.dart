import 'package:app/src/core/constance.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/profile/views/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 4;
  List<BottomNavigationBarItem> items() => const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppStrings.homeLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.shoppingCart),
          label: AppStrings.shopLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.shoppingBag),
          label: AppStrings.bagLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.heart),
          label: AppStrings.favoritesLabel,
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          label: AppStrings.profileLabel,
        ),
      ];
  List<Widget> screens = [
    Center(
      child: Text(
        "Home Screen",
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ),
    Center(
      child: Text(
        "Shop Screen",
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ),
    Center(
      child: Text(
        "Bag Screen",
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ),
    Center(
      child: Text(
        "Favorites Screen",
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ),
    /*Center(
      child: Text(
        "Profile Screen",
        style: Styles().getHeadline2TextStyle(
          color: AppTheme.getColor(
            ColorType.text,
            Constance.isLight,
          ),
        ),
      ),
    ),*/ const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
   
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.getColor(
          ColorType.background,
          Constance.isLight,
        ),
        selectedItemColor: AppTheme.getColor(
          ColorType.primary,
          Constance.isLight,
        ),
        unselectedItemColor: AppTheme.getColor(
          ColorType.gray,
          Constance.isLight,
        ),
        iconSize: 30,
        items: items(),
        currentIndex: currentIndex,
        onTap: (val) {
          currentIndex = val;
          setState(() {});
        },
      ),
      body: screens[currentIndex],
    );
  }
}
