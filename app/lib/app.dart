import 'package:app/src/core/constance.dart';
import 'package:app/src/core/route/router.dart';
import 'package:app/src/core/route/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Constance.appName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerate,
      initialRoute: Routes.initRoute,
    );
  }
}
