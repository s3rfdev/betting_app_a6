import 'package:flutter/material.dart';

import '../../res/styles.dart';

class IntroTab1 extends StatelessWidget {
  const IntroTab1({super.key});

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
              'assets/bg1.png',
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
                'Meet your coach, \nstart your journey'.toUpperCase(),
                style: h1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 50),
                  height: 100,
                  child: Image.asset(
                    'assets/i1.png',
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
