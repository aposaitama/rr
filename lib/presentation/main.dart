import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rr/core/routing/app_router.dart';
import 'package:rr/di/locator.dart';
import 'package:rr/presentation/pages/auth/auth_bloc/auth_bloc.dart';

void main() async {
  await initDependencies();
  final authBloc = GetIt.I.get<AuthBloc>();
  authBloc.add(Init());
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<AuthBloc>(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.createRouter(
          GetIt.I.get<AuthBloc>(),
        ),
      ),
    );
  }
}
