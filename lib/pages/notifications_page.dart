import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/notifications/notifications_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/menu/bottom_menu.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 2,
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
            Column(
              children: [
                SizedBox(height: 20),
                SafeArea(
                  child: Center(
                    child: Text(
                      'Notifications'.toUpperCase(),
                      style: h1,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                NotificationsBar(),
                SizedBox(height: 40),
                SvgPicture.asset('assets/not1.svg'),
                SizedBox(height: 20),
                SvgPicture.asset('assets/not2.svg'),
                SizedBox(height: 20),
                SvgPicture.asset('assets/not3.svg'),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
