import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rr/core/routing/app_routes.dart';
import 'package:rr/core/routing/go_router_refresh_stream.dart';
import 'package:rr/presentation/pages/auth/auth_bloc/auth_bloc.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter createRouter(AuthBloc authBloc) {
    return GoRouter(
      initialLocation: '/login',
      routes: $appRoutes,
      redirect: (
        BuildContext context,
        GoRouterState state,
      ) {
        final authStatus = authBloc.state.status;
        final isLogin = state.matchedLocation.contains(LoginRoute().location);

        if (authStatus == AuthenticationStatus.notAuthenticated && !isLogin) {
          return LoginRoute().location;
        }

        if (authStatus == AuthenticationStatus.authenticated && isLogin) {
          return HomeRoute().location;
        }

        return null;
      },
      refreshListenable: GoRouterRefreshStream(
        authBloc.stream,
      ),
    );
  }
}
