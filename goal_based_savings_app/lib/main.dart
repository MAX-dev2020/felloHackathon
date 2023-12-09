import 'package:goal_based_savings_app/core/injection_cotainer.dart';
import 'package:goal_based_savings_app/presentation/viewmodels/active_goal_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_app/presentation/routes/custom_routes.dart';
import 'package:goal_based_savings_app/presentation/themes/themes.dart';
import 'package:goal_based_savings_app/core/injection_cotainer.dart' as di;
import 'package:provider/provider.dart';

void main() {
  di.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => sl<ActiveGoalsViewModel>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: MyThemeData.customTheme,
        routerConfig: MyAppRouter.returnRouter());
  }
}
