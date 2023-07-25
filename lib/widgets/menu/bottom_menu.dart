import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../../pages/calendar_page.dart';
import '../../pages/home_page.dart';
import '../../pages/notifications_page.dart';
import '../../pages/settings_page1.dart';
import '../../res/styles.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: greyBlue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
          backgroundColor: greyBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: '',
          backgroundColor: greyBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_alert_rounded),
          label: '',
          backgroundColor: greyBlue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
          backgroundColor: greyBlue,
        ),
      ],
      currentIndex: index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Color(0xff505050),
      onTap: (val) {
        if (val == 1) Get.to(CalendarPage());
        if (val == 0) Get.to(HomePage());
        if (val == 2) Get.to(NotificationsPage());
        if (val == 3) Get.to(SettingsPage1());
      },
    );
  }
}
