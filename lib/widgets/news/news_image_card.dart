import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class NewsImageCard extends StatelessWidget {
  NewsImageCard(
      {super.key, required this.title, required this.time, required this.img});
  String title;
  String time;
  String img;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: Stack(
        children: [
          Image.asset(img),
          Positioned(
            bottom: 40,
            left: 20,
            child: Text(
              title,
              style: h17,
            ),
          ),
          Positioned(
            bottom: 18,
            left: 20,
            child: Text(
              time,
              style: s13Red,
            ),
          )
        ],
      ),
    );
  }
}
