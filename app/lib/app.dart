import 'package:app/src/controller/auth_cubit/auth_cubit.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/route/router.dart';
import 'package:app/src/core/route/routes.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()), //..authState()
      ],
      child: MaterialApp(
        title: Constance.appName,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.getThemeData(true),
        darkTheme: AppTheme.getThemeData(false),
        onGenerateRoute: AppRouter.onGenerate,
        initialRoute: Routes.initRoute,
      ),
    );
  }
}
