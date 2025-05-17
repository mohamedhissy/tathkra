import 'package:flutter/material.dart';
import 'package:tathkra/core/resources/manager_colors.dart';
import 'package:tathkra/core/resources/manager_font_sizes.dart';
import 'package:tathkra/core/resources/manager_font_weight.dart';
import 'package:tathkra/core/resources/manager_height.dart';
import 'package:tathkra/core/resources/manager_strings.dart';
import 'package:tathkra/core/resources/manager_width.dart';
import '../../../../core/resources/manager_assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.logout,
            color: ManagerColors.red,
            size: 40,
          ),
        ),
        actions: [
          Text(
            ManagerStrings.appName,
            style: TextStyle(
              fontSize: ManagerFontSizes.s44,
              fontWeight: ManagerFontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ManagerAssets.appBarHome1),
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double cardWidth = screenWidth > 1000 ? 760 : screenWidth - 40;
          double cardMargin = screenWidth > 1000 ? 360 : 20;

          return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: cardMargin),
              child: Column(
                children: [
                  SizedBox(height: ManagerHeight.h50),
                  // الكرت الأول
                  Container(
                    width: cardWidth,
                    height: 140,
                    decoration: BoxDecoration(
                      color: ManagerColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '23k',
                          style: TextStyle(
                            fontWeight: ManagerFontWeight.bold,
                            fontSize: ManagerFontSizes.s50,
                            color: ManagerColors.white,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w160),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.event_available,
                                color: ManagerColors.white, size: 80),
                            Text(
                              ManagerStrings.reservations,
                              style: TextStyle(
                                fontWeight: ManagerFontWeight.regular,
                                fontSize: ManagerFontSizes.s20,
                                color: ManagerColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h30),

                  // الكرت الثاني
                  Container(
                    width: cardWidth,
                    height: 140,
                    decoration: BoxDecoration(
                      color: ManagerColors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '15k',
                          style: TextStyle(
                            fontWeight: ManagerFontWeight.bold,
                            fontSize: ManagerFontSizes.s50,
                            color: ManagerColors.white,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w160),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person,
                                color: ManagerColors.white, size: 80),
                            Text(
                              ManagerStrings.users,
                              style: TextStyle(
                                fontWeight: ManagerFontWeight.regular,
                                fontSize: ManagerFontSizes.s20,
                                color: ManagerColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h30),

                  // كروت الصف السفلي: responsive Row / Column
                  screenWidth > 800
                      ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildMiniCard(
                        title: ManagerStrings.trips,
                        icon: Icons.directions_bus_sharp,
                        value: '250',
                        color: ManagerColors.red,
                        iconColor: ManagerColors.red,
                      ),
                      SizedBox(width: ManagerWidth.w20),
                      buildMiniCard(
                        title: ManagerStrings.trips,
                        icon: Icons.store,
                        value: '45',
                        color: ManagerColors.yellow,
                        iconColor: ManagerColors.yellow,
                      ),
                    ],
                  )
                      : Column(
                    children: [
                      buildMiniCard(
                        title: ManagerStrings.trips,
                        icon: Icons.directions_bus_sharp,
                        value: '250',
                        color: ManagerColors.red,
                        iconColor: ManagerColors.red,
                      ),
                      SizedBox(height: ManagerHeight.h20),
                      buildMiniCard(
                        title: ManagerStrings.trips,
                        icon: Icons.store,
                        value: '45',
                        color: ManagerColors.yellow,
                        iconColor: ManagerColors.yellow,
                      ),
                    ],
                  ),
                  SizedBox(height: ManagerHeight.h20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ManagerColors.primaryColor,
                      fixedSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ManagerStrings.citiesAndRegions,
                          style: TextStyle(
                            color: ManagerColors.white,
                            fontSize: ManagerFontSizes.s24,
                          ),
                        ),
                        Icon(
                          Icons.map,
                          color: ManagerColors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // تابع فرعي لبناء الكروت المصغرة
  Widget buildMiniCard({
    required String title,
    required IconData icon,
    required String value,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      width: 370,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: ManagerFontWeight.bold,
                  fontSize: ManagerFontSizes.s20,
                  color: ManagerColors.white,
                ),
              ),
              Icon(icon, color: ManagerColors.white, size: 30),
            ],
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: ManagerFontWeight.bold,
              fontSize: ManagerFontSizes.s48,
              color: ManagerColors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(0, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ManagerStrings.addATrip,
                    style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s24,
                    ),
                  ),
                  Icon(
                    Icons.add_circle,
                    color: iconColor,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
