import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/pages/about_page.dart';
import 'package:go_router_sample/pages/home_page.dart';
import 'package:go_router_sample/pages/login_page.dart';

import 'package:go_router_sample/routes/routes_name.dart';
import '../pages/dashboard_page.dart';
import '../pages/order_page.dart';

final GoRouter router = GoRouter(
  initialLocation: "/login",

  routes: <RouteBase>[

    GoRoute(
      path: RouteNames.loginPagePath,
      pageBuilder: (context, state) =>MaterialPage(child: LoginPage()),),

    StatefulShellRoute.indexedStack(
      builder: (BuildContext context,GoRouterState state,StatefulNavigationShell shell){
        return HomePage(navigationShell: shell);
      },
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.ordersPagePath,
              pageBuilder: (context, state) =>MaterialPage(child: OrderPage()),),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.dashboardPagePath,
              pageBuilder: (context, state) =>MaterialPage(child: DashboardPage()),),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.aboutPagePath,
              pageBuilder: (context, state) =>MaterialPage(child: AboutPage()),),
          ]),

    ]),


  ],
);