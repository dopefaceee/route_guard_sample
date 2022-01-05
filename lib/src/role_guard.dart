import 'package:auto_route/auto_route.dart';
import 'package:route_guard/src/router/web_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoleGuard extends AutoRedirectGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int roleId = (prefs.getInt('roleId') ?? 2);
    if (roleId == 1) {
      resolver.next();
    } else {
      redirect(HomeRoute(), resolver: resolver);
    }
  }
}
