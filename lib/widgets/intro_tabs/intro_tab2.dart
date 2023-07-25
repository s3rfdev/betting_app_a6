import 'package:flutter/material.dart';

import '../../res/styles.dart';

class IntroTab2 extends StatelessWidget {
  const IntroTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.8,
            child: Image.asset(
              'assets/bg2.png',
              fit: BoxFit.fill,
              scale: 0.01,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.7,
              ),
              Text(
                'Create a workout plan\n            to stay fit'.toUpperCase(),
                style: h1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 50),
                  height: 100,
                  child: Image.asset(
                    'assets/i2.png',
                    scale: 1,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
