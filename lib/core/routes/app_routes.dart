import 'package:fad_app/core/routes/routes.dart';
import 'package:fad_app/features/auth/presentation/ui/login_screen.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/ui/home_screen.dart';

class AppRoutes {
  static Route<dynamic>? function(RouteSettings setting) {
    switch (setting.name) {

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text(
                    'No route defined for ${setting.name}',
                  ),
                ),
              ),
        );
    }
  }
}