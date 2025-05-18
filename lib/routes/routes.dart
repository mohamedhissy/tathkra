import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tathkra/features/home/presentation/view/home_view.dart';
import '../core/resources/manager_strings.dart';
import '../features/add_company/presentation/view/add_company_view.dart';
import '../features/auth/presentation/view/login_view.dart';
import '../features/book_a_trip/presentation/view/book_a_trip_view.dart';
import '../features/company/presentation/view/company_view.dart';
import '../features/company_name/presentation/view/company_name_view.dart';
import '../features/tathkra_home/presentation/view/tathkra_home_view.dart';
import '../features/trips/presentation/view/trips_view.dart';

class Routes {
  static const String loginView = '/login_view';
  static const String homeView = '/home_view';
  static const String companyView = '/company_view';
  static const String addCompanyView = '/add_company_view';
  static const String companyNameView = '/company_name_view';
  static const String tathkraHomeView = '/tathkra_home_view';
  static const String tripsView = '/trips_view';
  static const String bookATrip = '/book_a_trip_view';


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
      case Routes.addCompanyView:
        return MaterialPageRoute(builder: (_) => const AddCompanyView());
      case Routes.companyNameView:
        return MaterialPageRoute(builder: (_) => const CompanyNameView());
      case Routes.tathkraHomeView:
        return MaterialPageRoute(builder: (_) => const TathkraHomeView());
      case Routes.tripsView:
        return MaterialPageRoute(builder: (_) => const TripsView());
      case Routes.bookATrip:
        return MaterialPageRoute(builder: (_) => const BookATrip());
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

