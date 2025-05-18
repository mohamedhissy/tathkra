import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

class TeipDetailsController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  TextEditingController dateController = TextEditingController();

  RxInt seatCount = 0.obs;
  var isMale = true.obs;
  var pageSelectedIndex = 2.obs;
  var currentPageIndex = 0.obs;
  // double visibleLetters = 20;

  void incrementSeats() {
    seatCount++;
  }

  void decrementSeats() {
    if (seatCount > 0) seatCount--;
  }





  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      locale: const Locale('ar', ''), // للتقويم بالعربية
    );
    if (picked != null) {
      dateController.text = '${picked.day}-${picked.month}-${picked.year}';
      update();
    }
  }



  void changeMale(int index) {
    isMale.value = index == 0;
  }

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }
}
