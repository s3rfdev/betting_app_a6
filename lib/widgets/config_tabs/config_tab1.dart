import 'package:betting1/widgets/buttons/button_red.dart';
import 'package:betting1/widgets/config_tabs/female.dart';
import 'package:betting1/widgets/config_tabs/male.dart';
import 'package:flutter/material.dart';

import '../../res/styles.dart';

class ConfigTab1 extends StatefulWidget {
  ConfigTab1({super.key, required this.next});
  Function next;
  @override
  State<ConfigTab1> createState() => _ConfigTab1State();
}

class _ConfigTab1State extends State<ConfigTab1> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 60),
                Text(
                  'Tell us about yourself!'.toUpperCase(),
                  style: h20,
                ),
                SizedBox(height: 5),
                Text(
                  'To give you a better experience we need\n                   to know your gender'
                      .toUpperCase(),
                  style: s16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => setState(() {
                                isMale = true;
                              }),
                              child: Male(isActive: isMale),
                            ),
                            InkWell(
                              onTap: () => setState(() {
                                isMale = false;
                              }),
                              child: Female(isActive: !isMale),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                            width: 130,
                            child: InkWell(
                              onTap: () => widget.next(),
                              child: ButtonRed(title: 'Next'),
                            )),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
