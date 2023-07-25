import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class HeaderNews extends StatelessWidget {
  HeaderNews({super.key, required this.date, required this.title});
  String title;
  String date;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: h17,
              ),
              Text(
                date,
                style: s13Red,
              ),
            ],
          )),
    );
  }
}
