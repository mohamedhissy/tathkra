import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra/core/resources/manager_colors.dart';
import 'package:tathkra/core/resources/manager_font_sizes.dart';
import 'package:tathkra/core/resources/manager_font_weight.dart';
import 'package:tathkra/core/resources/manager_height.dart';
import 'package:tathkra/core/resources/manager_strings.dart';
import '../controller/reservations_controller.dart';

class ReservationsView extends StatelessWidget {
  final ReservationsController controller = Get.put(ReservationsController());

  ReservationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ManagerStrings.reservations,
          style: TextStyle(
            fontSize: ManagerFontSizes.s44,
            fontWeight: ManagerFontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double containerWidth = screenWidth > 600 ? 500 : screenWidth * 0.9;
          double horizontalMargin = screenWidth > 600 ? (screenWidth - containerWidth) / 2 : screenWidth * 0.05;

          return Obx(() {
            String selected = controller.selectedReservationStatus.value;

            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ManagerHeight.h50),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controller.buildFilterButton(
                          label: ManagerStrings.cancellation,
                          color: ManagerColors.red,
                          isSelected: selected == 'cancelled',
                          onTap: () => controller.selectReservationStatus('cancelled'),
                        ),
                        const SizedBox(width: 12),
                        controller.buildFilterButton(
                          label: ManagerStrings.confirmed,
                          color: ManagerColors.green,
                          isSelected: selected == 'confirmed',
                          onTap: () => controller.selectReservationStatus('confirmed'),
                        ),
                        const SizedBox(width: 12),
                        controller.buildFilterButton(
                          label: ManagerStrings.waiting,
                          color: ManagerColors.amber,
                          isSelected: selected == 'waiting',
                          onTap: () => controller.selectReservationStatus('waiting'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h20),

                  if (selected == 'waiting') _waitingContainer(containerWidth, horizontalMargin),
                  if (selected == 'confirmed') _confirmedContainer(containerWidth, horizontalMargin),
                  if (selected == 'cancelled') _cancelledContainer(containerWidth, horizontalMargin),
                ],
              ),
            );
          });
        },
      ),
    );
  }

  Widget _waitingContainer(double width, double margin) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: ManagerColors.bgColorcompany,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ManagerColors.bgFrameColorcompany,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SY001',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
              Text('الاسم الكامل',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('ذكر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.gender,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
              Row(
                children: [
                  Text('0934452265',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.phoneBookATrip,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                child: Text(
                  'إلغاء',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ManagerFontSizes.s18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  child: Text(
                    'تأكيد',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ManagerFontSizes.s18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _confirmedContainer(double width, double margin) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: ManagerColors.bgColorcompany,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ManagerColors.bgFrameColorcompany,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SY001',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
              Text('الاسم الكامل',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('ذكر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.gender,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
              Row(
                children: [
                  Text('0934452265',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.phoneBookATrip,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          SizedBox(
            width: 450,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              child: Text(
                'تم التأكيد',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ManagerFontSizes.s18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cancelledContainer(double width, double margin) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: ManagerColors.bgColorcompany,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: ManagerColors.bgFrameColorcompany,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('SY002',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
              Text('الاسم الكامل',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('ذكر',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.gender,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
              Row(
                children: [
                  Text('0934452265',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                  Text(ManagerStrings.phoneBookATrip,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: ManagerFontWeight.regular)),
                ],
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h20),
          SizedBox(
            width: 450,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 20),
              ),
              child: Text(
                'تم الالغاء',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ManagerFontSizes.s18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
