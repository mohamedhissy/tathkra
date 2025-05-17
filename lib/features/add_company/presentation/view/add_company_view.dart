import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tathkra/core/resources/manager_colors.dart';
import 'package:tathkra/core/resources/manager_width.dart';

import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';

class AddCompanyView extends StatelessWidget {
  const AddCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ManagerStrings.newCompany,
          style: TextStyle(
            fontSize: ManagerFontSizes.s44,
            fontWeight: ManagerFontWeight.bold,
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double horizontalMargin = screenWidth > 800 ? 200 : 20;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ManagerHeight.h24),
                  _buildLabel(ManagerStrings.userName, horizontalMargin),
                  _buildTextField(ManagerStrings.enterUserName, horizontalMargin),

                  SizedBox(height: 30),
                  _buildLabel(ManagerStrings.password, horizontalMargin),
                  _buildTextField(ManagerStrings.enterYourPassword, horizontalMargin),

                  SizedBox(height: 30),
                  _buildLabel(ManagerStrings.phoneNumber, horizontalMargin),
                  _buildTextField(ManagerStrings.enterPhoneNumber, horizontalMargin),

                  SizedBox(height: 30),
                  _buildLabel(ManagerStrings.address, horizontalMargin),
                  _buildTextField(ManagerStrings.enterTheAddress, horizontalMargin),

                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ManagerColors.green,
                            fixedSize: Size(250, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            ManagerStrings.addition,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s12,
                            ),
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ManagerColors.red,
                            fixedSize: Size(150, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            ManagerStrings.delete,
                            style: TextStyle(
                              color: ManagerColors.white,
                              fontSize: ManagerFontSizes.s12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget _buildLabel(String text, double margin) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: margin),
    child: Text(
      text,
      style: TextStyle(
        fontSize: ManagerFontSizes.s18,
        fontWeight: ManagerFontWeight.regular,
        color: ManagerColors.black,
      ),
    ),
  );
}

Widget _buildTextField(String hint, double margin) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: margin),
    child: TextField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ManagerRadius.r24),
          borderSide: BorderSide(color: ManagerColors.bgColorTextField),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ManagerRadius.r24),
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: TextStyle(color: ManagerColors.bgColorTextFieldString),
        filled: true,
        fillColor: ManagerColors.bgColorTextField,
      ),
    ),
  );
}
