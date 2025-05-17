import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra/routes/routes.dart';
import 'config/dependancy_injection.dart';

void main() async {
  await initModule();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeView,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
