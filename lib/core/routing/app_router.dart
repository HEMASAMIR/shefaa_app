import 'package:flutter/material.dart';
import 'package:shefaa_app_flutter/core/routing/routes.dart';
import 'package:shefaa_app_flutter/features/login/ui/login_screen.dart';
import 'package:shefaa_app_flutter/features/on_boarding/ui/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingPage:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
      case Routes.loginPage:
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
