import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

class ReservationsController extends GetxController {
  var selectedReservationStatus = 'waiting'.obs;

  void selectReservationStatus(String status) {
    selectedReservationStatus.value = status;
  }

  Widget buildFilterButton({
    required String label,
    required Color color,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? color : Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        elevation: 0,
      ),
      child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}
