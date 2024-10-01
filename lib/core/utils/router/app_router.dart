import 'package:flutter/material.dart';
import 'package:mini_whatsapp/core/utils/router/app_routes.dart';
import 'package:mini_whatsapp/features/authentication/sign_up/views/sign_up_view.dart';
import 'package:mini_whatsapp/features/home/views/home_view.dart';
import 'package:mini_whatsapp/features/splash/views/splash_view.dart';

import '../../../features/authentication/sign_in/views/sign_in_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
