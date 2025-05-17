import 'package:flutter/material.dart';

import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_strings.dart';

class CompanyNameView extends StatelessWidget {
  const CompanyNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ManagerStrings.companyName,
          style: TextStyle(
            fontSize: ManagerFontSizes.s44,
            fontWeight: ManagerFontWeight.bold,
          ),
        ),
      ),
    );
  }
}
