import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../features/reservations/presentation/controller/reservations_controller.dart';
import '../features/trip_details/presentation/controller/trip_details_controller.dart';

initModule() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}


initTeipDetails() {
  Get.put<TeipDetailsController>(TeipDetailsController());
}

disposeTeipDetails() {
  Get.delete<TeipDetailsController>();
}

initReservations() {
  Get.put<ReservationsController>(ReservationsController());
}

disposeReservations() {
  Get.delete<ReservationsController>();
}

