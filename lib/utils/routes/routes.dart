import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture/utils/routes/routes_name.dart';
import 'package:flutter_mvvm_architecture/view/home_screen.dart';
import 'package:flutter_mvvm_architecture/view/login_view.dart';
import 'package:flutter_mvvm_architecture/view/signup_view.dart';
import 'package:flutter_mvvm_architecture/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final argume = settings.arguments;
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashView(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case RoutesName.singUp:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignUpView(),
        );
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('no route defined')),
          );
        });
    }
  }
}
