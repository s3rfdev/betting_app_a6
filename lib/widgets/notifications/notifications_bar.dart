import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class NotificationsBar extends StatefulWidget {
  NotificationsBar({super.key});

  @override
  State<NotificationsBar> createState() => _NotificationsBarState();
}

class _NotificationsBarState extends State<NotificationsBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 30,
      decoration: BoxDecoration(
        color: greyBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => setState(() {
              index = 0;
            }),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: index == 0 ? red : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('New', style: s13White),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 1;
            }),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: index == 1 ? red : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Eveents', style: s13White),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              index = 2;
            }),
            child: Container(
              height: 30,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: index == 2 ? red : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('All', style: s13White),
            ),
          ),
        ],
      ),
    );
  }
}
