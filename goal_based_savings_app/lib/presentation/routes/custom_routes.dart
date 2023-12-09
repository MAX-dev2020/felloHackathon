import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_based_savings_app/presentation/constants/routes.dart';
import 'package:goal_based_savings_app/presentation/pages/goalScreen.dart';

class MyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(routes: [
      GoRoute(
        name: Routes.goalScreen.toString(),
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return GoalsScreen();
        },
      )
    ]);
    return router;
  }
}
