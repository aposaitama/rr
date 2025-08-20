import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rr/core/validators/auth_validators.dart';
import 'package:rr/presentation/pages/auth/auth_bloc/auth_bloc.dart';
import 'package:rr/presentation/pages/auth/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _emailTouched = false;
  bool _passwordTouched = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      if (!_emailTouched) {
        setState(() {
          _emailTouched = true;
        });
      } else {
        setState(
          () {},
        );
      }
    });

    _passwordController.addListener(() {
      if (!_passwordTouched) {
        setState(() {
          _passwordTouched = true;
        });
      } else {
        setState(
          () {},
        );
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool get _isFormValid {
    final emailError = AuthValidators.validateEmail(
      _emailController.text,
    );
    final passwordError = AuthValidators.validatePassword(
      _passwordController.text,
    );

    return emailError == null && passwordError == null;
  }

  void _submitLogin(BuildContext context) {
    setState(
      () {
        _emailTouched = true;
        _passwordTouched = true;
      },
    );

    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            Login(
              _emailController.text.trim(),
              _passwordController.text.trim(),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthBlocState>(
      listener: (context, state) {
        if (state.errorMessage?.isNotEmpty ?? false) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage!,
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Please sign in to your account',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  CustomTextField(
                    controller: _emailController,
                    label: 'Email',
                    hint: 'Enter your email',
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => !_emailTouched
                        ? null
                        : AuthValidators.validateEmail(
                            value,
                          ),
                    onTap: () => setState(
                      () => _emailTouched = true,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  CustomTextField(
                    controller: _passwordController,
                    label: 'Password',
                    hint: 'Enter your password',
                    icon: Icons.lock_outlined,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    validator: (value) => !_passwordTouched
                        ? null
                        : AuthValidators.validatePassword(
                            value,
                          ),
                    onTap: () => setState(
                      () => _passwordTouched = true,
                    ),
                    onFieldSubmitted: (_) {
                      if (_isFormValid) _submitLogin(context);
                    },
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<AuthBloc, AuthBlocState>(
                    builder: (context, state) {
                      final isLoading =
                          state.status == AuthenticationStatus.loading;

                      return ElevatedButton(
                        onPressed: (isLoading || !_isFormValid)
                            ? null
                            : () => _submitLogin(context),
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
                                'Login',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
