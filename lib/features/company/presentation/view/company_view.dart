import 'package:flutter/material.dart';
import 'package:tathkra/core/resources/manager_colors.dart';
import 'package:tathkra/core/resources/manager_height.dart';
import 'package:tathkra/core/resources/manager_strings.dart';

import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, -1),
            ),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.search, color: Colors.white, size: 30),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(250, 50),
                backgroundColor: ManagerColors.green,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.white),
              label: Text(
                ManagerStrings.addANewCompany,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ManagerFontSizes.s18,
                  fontWeight: ManagerFontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ManagerStrings.companies,
          style: TextStyle(
            fontSize: ManagerFontSizes.s44,
            fontWeight: ManagerFontWeight.bold,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double contentWidth = screenWidth > 800 ? 760 : screenWidth - 40;
          double horizontalMargin = screenWidth > 800 ? (screenWidth - contentWidth) / 2 : 20;

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                  width: contentWidth,
                  height: 180,
                  decoration: BoxDecoration(
                    color: ManagerColors.bgColorcompany,
                    border: Border.all(
                      color: ManagerColors.bgFrameColorcompany,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ManagerColors.green,
                                fixedSize: Size(100, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                ManagerStrings.effective,
                                style: TextStyle(
                                  color: ManagerColors.white,
                                  fontSize: ManagerFontSizes.s14,
                                ),
                              ),
                            ),
                            SizedBox(height: ManagerHeight.h20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ManagerColors.red,
                                fixedSize: Size(100, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                ManagerStrings.details,
                                style: TextStyle(
                                  color: ManagerColors.white,
                                  fontSize: ManagerFontSizes.s12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth > 800 ? 380 : 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ManagerStrings.companyName,
                                style: TextStyle(
                                  fontSize: ManagerFontSizes.s28,
                                  fontWeight: ManagerFontWeight.bold,
                                ),
                              ),
                              SizedBox(height: ManagerHeight.h18),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '0598887543',
                                    style: TextStyle(
                                        fontSize: ManagerFontSizes.s18,
                                        fontWeight: ManagerFontWeight.regular,
                                        color: ManagerColors.grey),
                                  ),
                                  Text(
                                    ManagerStrings.phone,
                                    style: TextStyle(
                                        fontSize: ManagerFontSizes.s18,
                                        fontWeight: ManagerFontWeight.regular,
                                        color: ManagerColors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '7',
                                    style: TextStyle(
                                        fontSize: ManagerFontSizes.s18,
                                        fontWeight: ManagerFontWeight.regular,
                                        color: ManagerColors.grey),
                                  ),
                                  Text(
                                    ManagerStrings.numberOfTrips,
                                    style: TextStyle(
                                        fontSize: ManagerFontSizes.s18,
                                        fontWeight: ManagerFontWeight.regular,
                                        color: ManagerColors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
