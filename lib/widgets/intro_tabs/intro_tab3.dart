import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/config_page.dart';
import '../../res/styles.dart';
import '../buttons/button_red.dart';

class IntroTab3 extends StatelessWidget {
  const IntroTab3({super.key});

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
              'assets/bg3.png',
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
                '    Action is the\nkey to all success'.toUpperCase(),
                style: h1,
              ),
              Expanded(
                  child: Center(
                      child: SizedBox(
                width: 200,
                child: InkWell(
                  onTap: () => Get.to(ConfigPage()),
                  child: ButtonRed(
                    title: 'Start Now',
                  ),
                ),
              ))),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 50),
                  height: 100,
                  child: Image.asset(
                    'assets/i3.png',
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
