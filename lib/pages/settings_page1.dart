import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:table_calendar/table_calendar.dart';

import '../res/styles.dart';
import '../widgets/menu/bottom_menu.dart';
import 'settings_page2.dart';

class SettingsPage1 extends StatelessWidget {
  const SettingsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 3,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: Color(0xff0F1925),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SafeArea(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: CircleAvatar(
                          backgroundColor: greyBlue,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/c1.svg'),
                      SvgPicture.asset('assets/info.svg')
                    ],
                  ),
                  SizedBox(height: 50),
                  Center(
                      child: InkWell(
                    onTap: () => Get.to(SettingsPage2()),
                    child: SvgPicture.asset('assets/opt.svg'),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
