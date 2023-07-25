import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../res/styles.dart';
import '../widgets/menu/bottom_menu.dart';

class SettingsPage3 extends StatelessWidget {
  const SettingsPage3({super.key});

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
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            'Units of Measure'.toUpperCase(),
                            style: h1,
                          ),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  SvgPicture.asset('assets/ps3.svg'),
                  SizedBox(height: 10),
                  SvgPicture.asset('assets/ps4.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
