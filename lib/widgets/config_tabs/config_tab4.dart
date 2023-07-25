import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../res/styles.dart';
import '../buttons/button_red.dart';

class ConfigTab4 extends StatefulWidget {
  ConfigTab4({super.key, required this.next});
  Function next;

  @override
  State<ConfigTab4> createState() => _ConfigTab4State();
}

class _ConfigTab4State extends State<ConfigTab4> {
  bool isMale = true;
  List<String> years = List.generate(230, (index) => index.toString());
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
                  'What’s your height?'.toUpperCase(),
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
                              startPosition: 160,
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
                                width: 110,
                                height: 3,
                              ),
                            ),
                            Positioned(
                              top: 165,
                              child: Container(
                                color: red,
                                width: 110,
                                height: 3,
                              ),
                            ),
                            Positioned(
                              top: 135,
                              right: 120,
                              child: Text(
                                'cm',
                                style: s17,
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
