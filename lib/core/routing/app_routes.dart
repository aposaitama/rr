import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rr/presentation/pages/home_page/home_page.dart';
import 'package:rr/presentation/pages/login_page/login_page.dart';

part 'app_routes.g.dart';

@TypedGoRoute<LoginRoute>(
  path: '/login',
)
class LoginRoute extends GoRouteData with _$LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
)
class HomeRoute extends GoRouteData with _$HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}
