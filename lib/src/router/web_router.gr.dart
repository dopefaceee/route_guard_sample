// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'web_router.dart';

class _$WebAppRouter extends RootStackRouter {
  _$WebAppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.roleGuard})
      : super(navigatorKey);

  final RoleGuard roleGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    HomeRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          transitionsBuilder: TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    VipRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const VipPage(),
          transitionsBuilder: TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LoginRoute.name, path: '/'),
        RouteConfig(HomeRoute.name, path: '/dashboard'),
        RouteConfig(VipRoute.name, path: '/vip', guards: [roleGuard])
      ];
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/dashboard');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [VipPage]
class VipRoute extends PageRouteInfo<void> {
  const VipRoute() : super(VipRoute.name, path: '/vip');

  static const String name = 'VipRoute';
}
