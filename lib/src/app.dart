import 'package:flutter/material.dart';
import 'package:route_guard/src/router/web_router.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _webAppRouter = WebAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _webAppRouter.routeInfoProvider(),
      routerDelegate: _webAppRouter.delegate(),
      routeInformationParser: _webAppRouter.defaultRouteParser(),
    );
  }
}
