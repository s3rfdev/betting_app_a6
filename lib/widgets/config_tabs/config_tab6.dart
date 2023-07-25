import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../res/styles.dart';
import '../buttons/button_red.dart';

class ConfigTab6 extends StatefulWidget {
  ConfigTab6({super.key, required this.next});
  Function next;

  @override
  State<ConfigTab6> createState() => _ConfigTab6State();
}

class _ConfigTab6State extends State<ConfigTab6> {
  bool isMale = true;
  List<String> years = [
    'Rookie',
    'Beginner',
    'Intermediate',
    'Advance',
    'True Beast',
  ];
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
                  'Your regular physical\n        activity level?'
                      .toUpperCase(),
                  style: h20,
                ),
                SizedBox(height: 5),
                Text(
                  'This helps us create your personalized plan'.toUpperCase(),
                  style: s16,
                  maxLines: 2,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        alignment: Alignment.center,
                        height: 250,
                        width: 400,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            WheelChooser(
                              startPosition: 2,
                              unSelectTextStyle: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 18),
                              selectTextStyle: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 22),
                              itemSize: 90,
                              onValueChanged: (s) => Feedback.forTap(context),
                              datas: years,
                            ),
                            Positioned(
                              top: 90,
                              child: Container(
                                color: red,
                                width: 210,
                                height: 3,
                              ),
                            ),
                            Positioned(
                              top: 165,
                              child: Container(
                                color: red,
                                width: 210,
                                height: 3,
                              ),
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
