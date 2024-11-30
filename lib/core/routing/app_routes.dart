import 'package:doctor_app/core/di/dependency_injection.dart';
import 'package:doctor_app/core/routing/reoutes.dart';
import 'package:doctor_app/features/homr/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signup:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: const SignUpScreen(),
            ));
      case Routes.login:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            ));
      default:
        return _errorRoute();
    }
  }

  // Handle unknown routes
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }
}
