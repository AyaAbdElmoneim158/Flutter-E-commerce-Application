import 'package:app/src/core/shareable_components/common_bottom_nav_bar.dart';
import 'package:app/src/core/shareable_components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool checkVal = true;
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CommonBottomNavBar(),
      appBar: CustomAppBar(headline: "Headline", style: 3),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
