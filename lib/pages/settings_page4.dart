import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/menu/bottom_menu.dart';

class SettingsPage4 extends StatelessWidget {
  const SettingsPage4({super.key});

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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
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
                          Expanded(child: SizedBox()),
                          Text(
                            'Notifications'.toUpperCase(),
                            style: h1,
                          ),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  SvgPicture.asset('assets/ps5.svg'),
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/ps6.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
