import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tathkra/features/home/presentation/view/home_view.dart';
import '../core/resources/manager_strings.dart';
import '../features/auth/presentation/view/login_view.dart';
import '../features/company/presentation/view/company_view.dart';

class Routes {
  static const String loginView = '/login_view';
  static const String homeView = '/home_view';
  static const String companyView = '/company_view';


}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginView:
        // initAuth();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.companyView:
        return MaterialPageRoute(builder: (_) => const CompanyView());
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

