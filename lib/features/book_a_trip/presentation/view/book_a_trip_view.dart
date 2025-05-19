import 'package:flutter/material.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';

class BookATrip extends StatelessWidget {
  const BookATrip({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth > 600 ? 500.0 : screenWidth * 0.9;
    final horizontalMargin = screenWidth > 600 ? (screenWidth - containerWidth) / 2 : screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.sync, color: ManagerColors.primaryColor, size: 44),
          onPressed: () {},
        ),
        title: Text(
          'SY001',
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
            icon: const Icon(Icons.arrow_forward_ios_sharp, color: ManagerColors.primaryColor, size: 44),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: ManagerHeight.h50),

          // Card 1
          Container(
            margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
            width: containerWidth,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('الاسم الكامل',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                        Text(ManagerStrings.gender,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('0598776784',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                        Text(ManagerStrings.phoneBookATrip,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
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
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      ),
                      child: Text(
                        'تأجيل',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ManagerFontSizes.s18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: ManagerHeight.h10),

          // Card 2
          Container(
            margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
            width: containerWidth,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('الاسم الكامل',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ManagerFontSizes.s24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                        Text(ManagerStrings.gender,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('0598776784',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                        Text(ManagerStrings.phoneBookATrip,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: ManagerFontSizes.s18,
                            fontWeight: ManagerFontWeight.regular,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: ManagerHeight.h20),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      disabledBackgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                    child: Text(
                      'تم التأكيد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
