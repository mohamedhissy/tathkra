import 'package:flutter/material.dart';
import 'package:tathkra/core/resources/manager_assets.dart';
import 'package:tathkra/core/resources/manager_font_sizes.dart';
import 'package:tathkra/core/resources/manager_font_weight.dart';
import 'package:tathkra/core/resources/manager_height.dart';
import 'package:tathkra/core/resources/manager_width.dart';
import 'package:tathkra/core/widgets/base_button.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final maxFormWidth = 600.0;
          final horizontalPadding = screenWidth > maxFormWidth
              ? (screenWidth - maxFormWidth) / 2
              : 20.0;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxFormWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: ManagerHeight.h50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "تذكرة",
                          style: TextStyle(
                            fontSize: ManagerFontSizes.s48,
                            fontWeight: ManagerFontWeight.bold,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w10),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ManagerAssets.auth),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: ManagerHeight.h40),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r24)),
                          borderSide: BorderSide(
                            color: ManagerColors.bgColorTextField,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r24)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: ManagerStrings.enterEmailOrUser,
                        hintStyle: TextStyle(
                            color: ManagerColors.bgColorTextFieldString),
                        filled: true,
                        fillColor: ManagerColors.bgColorTextField,
                      ),
                    ),
                    const SizedBox(height: ManagerHeight.h24),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r24)),
                          borderSide: BorderSide(
                            color: ManagerColors.bgColorTextField,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ManagerRadius.r24)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: ManagerStrings.password,
                        hintStyle: TextStyle(
                            color: ManagerColors.bgColorTextFieldString),
                        filled: true,
                        fillColor: ManagerColors.bgColorTextField,
                      ),
                    ),
                    const SizedBox(height: ManagerHeight.h60),
                    BaseButton(
                      width: 240,
                      height: ManagerHeight.h75,
                      onPressed: () {},
                      title: ManagerStrings.login,
                      textStyle: TextStyle(
                        fontWeight: ManagerFontWeight.regular,
                        fontSize: ManagerFontSizes.s48,
                      ),
                    ),
                    const SizedBox(height: ManagerHeight.h50),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
