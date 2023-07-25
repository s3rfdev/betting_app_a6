import 'package:betting1/widgets/buttons/button_red.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../res/styles.dart';

class ConfigTab2 extends StatefulWidget {
  ConfigTab2({super.key, required this.next});
  Function next;

  @override
  State<ConfigTab2> createState() => _ConfigTab2State();
}

class _ConfigTab2State extends State<ConfigTab2> {
  bool isMale = true;
  List<String> years = List.generate(100, (index) => index.toString());
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
                  'How old are you ?'.toUpperCase(),
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
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            WheelChooser(
                              startPosition: 30,
                              unSelectTextStyle: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 20),
                              selectTextStyle: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 40),
                              itemSize: 80,
                              onValueChanged: (s) => Feedback.forTap(context),
                              datas: years,
                            ),
                            Positioned(
                              top: 90,
                              child: Container(
                                color: red,
                                width: 70,
                                height: 3,
                              ),
                            ),
                            Positioned(
                              top: 165,
                              child: Container(
                                color: red,
                                width: 70,
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
