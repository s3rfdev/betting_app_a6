import 'package:flutter/material.dart';

class Female extends StatelessWidget {
  Female({super.key, required this.isActive});
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      child: Image.asset(
          isActive ? 'assets/female_red.png' : 'assets/female_black.png'),
    );
  }
}
