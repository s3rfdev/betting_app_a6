import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class ButtonRed extends StatelessWidget {
  ButtonRed({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 180,
      height: 50,
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: s17,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
