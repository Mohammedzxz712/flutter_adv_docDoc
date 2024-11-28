
import 'package:doctor_app/core/routing/reoutes.dart';
import 'package:flutter/material.dart';
import '../../features/login/ui/screen/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoarding());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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
