import 'package:flutter/material.dart';

class Male extends StatelessWidget {
  Male({super.key, required this.isActive});
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      child: Image.asset(
          isActive ? 'assets/male_red.png' : 'assets/male_black.png'),
    );
  }
}
