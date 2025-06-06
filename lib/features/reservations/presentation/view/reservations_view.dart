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
        leading: IconButton(
          icon: const Icon(Icons.sync, color: ManagerColors.primaryColor,size: 44,),
          onPressed: () {},
        ),
        title: Text(
          ManagerStrings.reservations,
          style: TextStyle(
            fontSize: ManagerFontSizes.s44,
            fontWeight: ManagerFontWeight.bold,
          ),
        ),
        actions: [
          Text(
            'السابق',
            style: TextStyle(
              color: ManagerColors.black,
              fontSize: ManagerFontSizes.s16,
              fontWeight: ManagerFontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_sharp, color: ManagerColors.primaryColor,size: 44,),
            onPressed: () {},
          ),
        ],
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
                          label: ManagerStrings.cancelled,
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
                onPressed: () {
                  showDialog(
                    context: Get.context!,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: ManagerColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      title: Center(
                        child: Text(
                          'ماهو سبب إلغاء الحجز؟',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _reasonButton(ctx, 'تم إلغاء الرحلة'),
                          SizedBox(height: 8),
                          _reasonButton(ctx, 'تم تأجيل الرحلة'),
                          SizedBox(height: 8),
                          _reasonButton(ctx, 'أسباب أخرى'),
                        ],
                      ),
                    ),
                  );
                },
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

  Widget _reasonButton(BuildContext ctx, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.of(ctx).pop();
        if (text == 'أسباب أخرى') {
          showCustomReasonDialog(ctx); // نافذة الإدخال اليدوي
        } else {
          print("سبب الإلغاء: $text");
        }
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }

  void showCustomReasonDialog(BuildContext context) {
    TextEditingController customReasonController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: ManagerColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'يرجى ذكر السبب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: ManagerFontSizes.s18,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey.shade400,
                indent: 76,
                endIndent: 76,
              ),
            ],
          ),
          content: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              controller: customReasonController,
              maxLines: 6,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                hintStyle: TextStyle(
                  color: ManagerColors.black,
                ),
                hintText: 'نص مخصص',
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                String reason = customReasonController.text.trim();
                Navigator.of(ctx).pop();
                print('سبب مخصص: $reason');
              },
              child: Text('تأكيد',style: TextStyle(
                color: ManagerColors.black,
                fontSize: ManagerFontSizes.s16,
              ),),
            ),
          ],
        );
      },
    );
  }

}

