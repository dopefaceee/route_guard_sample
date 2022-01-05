import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:route_guard/src/home_page.dart';
import 'package:route_guard/src/login_page.dart';
import 'package:route_guard/src/role_guard.dart';
import 'package:route_guard/src/vip_page.dart';

part 'web_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true, path: '/'),
    CustomRoute(page: HomePage, path: '/dashboard', transitionsBuilder: TransitionsBuilders.noTransition),
    CustomRoute(page: VipPage, path: '/vip', guards: [RoleGuard], transitionsBuilder: TransitionsBuilders.noTransition),
  ],
)
class WebAppRouter extends _$WebAppRouter {
  WebAppRouter()
      : super(
          roleGuard: RoleGuard(),
        );
}
