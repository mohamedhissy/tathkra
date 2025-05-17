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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("تذكرة",style: TextStyle(
                fontSize: ManagerFontSizes.s48,
                fontWeight: ManagerFontWeight.bold,
              ),),
              SizedBox(width: ManagerWidth.w10,),
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
          SizedBox(height: ManagerHeight.h40,),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w250),
              child: TextField(
                textAlign: TextAlign.center, // لمحاذاة النص أفقيًا في المنتصف
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
            ),
          ),
          SizedBox(height: ManagerHeight.h24,),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w250),
              child: TextField(
                textAlign: TextAlign.center, // لمحاذاة النص أفقيًا في المنتصف
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
            ),
          ),
          SizedBox(height: ManagerHeight.h60,),
          BaseButton(
            width: ManagerWidth.w210,
              height: ManagerHeight.h75,
              onPressed: (){},
            title: ManagerStrings.login,
            textStyle: TextStyle(
              fontWeight: ManagerFontWeight.regular,
              fontSize: ManagerFontSizes.s48,
            ),
          ),
        ],
      ),
    );
  }
}
