import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/resources/manager_strings.dart';
import '../features/auth/presentation/view/login_view.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingView = '/out_boarding_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String homeView = '/home_view';
  static const String profileView = '/profile_view';
  static const String detailsView = '/view_details';
  static const String settingView = '/setting_view';
  static const String cartView = '/cart_view';
  static const String brandView = '/view_details';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        // initAuth();
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}

