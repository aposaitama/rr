import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rr/core/routing/app_routes.dart';

class AppRouter {
  const AppRouter._();

  static final GoRouter routerConfig = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: LoginRoute().location,
    routes: $appRoutes,
    redirect: (BuildContext context, GoRouterState state) {
      // final bool hasToken = GetIt.I<StorageService>().accessToken != null;
      final bool hasToken = false;

      final isLogin = state.matchedLocation.contains(
        LoginRoute().location,
      );

      if (!hasToken && !isLogin) {
        return LoginRoute().location;
      }

      return null;
    },
  );
}
