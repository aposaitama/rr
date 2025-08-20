import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rr/presentation/pages/auth/auth_bloc/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocSelector<AuthBloc, AuthBlocState, String?>(
                selector: (state) => state.user?.userName,
                builder: (context, userName) {
                  return Column(
                    children: [
                      Text(
                        'Welcome, ${userName ?? 'User'}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Text(
                        'You are now logged in',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 32),
              BlocBuilder<AuthBloc, AuthBlocState>(
                builder: (context, state) {
                  final isLoading =
                      state.status == AuthenticationStatus.loading;

                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              context.read<AuthBloc>().add(
                                    Logout(),
                                  );
                            },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            12.0,
                          ),
                        ),
                      ),
                      child: isLoading
                          ? const SizedBox(
                              height: 20.0,
                              width: 20.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,
                              ),
                            )
                          : const Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
