import 'package:flutter/material.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

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
          ManagerStrings.notifications,
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
      body: Column(
        children: [
          SizedBox(height: ManagerHeight.h50),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 500),
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: ManagerColors.bgColorcompany,
              borderRadius: BorderRadius.circular(40),
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
                    Row(
                      children: [
                        Text('ص',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ManagerFontSizes.s20,
                                fontWeight: ManagerFontWeight.regular)),
                        Text('12:42',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ManagerFontSizes.s24,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(ManagerStrings.newBooking,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: ManagerFontSizes.s32,
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizedBox(height: ManagerHeight.h20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 38,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          ManagerStrings.review,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ManagerFontSizes.s16,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                      ),
                    ),
                    Text('الاسم الكامل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: ManagerHeight.h20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 500),
            width: 500,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: ManagerColors.bgColorcompany,
              borderRadius: BorderRadius.circular(40),
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
                    Row(
                      children: [
                        Text('ص',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ManagerFontSizes.s20,
                                fontWeight: ManagerFontWeight.regular)),
                        Text('12:42',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: ManagerFontSizes.s24,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(ManagerStrings.newBooking,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: ManagerFontSizes.s32,
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                SizedBox(height: ManagerHeight.h20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 136,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          ManagerStrings.viewed,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: ManagerFontSizes.s14,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                      ),
                    ),
                    Text('الاسم الكامل',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
