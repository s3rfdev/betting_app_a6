import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../res/styles.dart';
import '../buttons/button_red.dart';

class ConfigTab3 extends StatefulWidget {
  ConfigTab3({super.key, required this.next});
  Function next;

  @override
  State<ConfigTab3> createState() => _ConfigTab3State();
}

class _ConfigTab3State extends State<ConfigTab3> {
  bool isMale = true;
  List<Widget> years = List.generate(100, (index) => WeightItem(id: index));
  int index = 60;
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
                      //-----------
                      Container(
                        height: 200,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Transform.scale(
                              scale: 1.4,
                              child: WheelChooser.custom(
                                horizontal: true,
                                startPosition: 60,
                                itemSize: 20,
                                squeeze: 1,
                                onValueChanged: (s) {
                                  Feedback.forTap(context);
                                  setState(() {
                                    index = s as int;
                                  });
                                },
                                children: years,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 80,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: index < 10 ? 35 : 0,
                                      bottom: 0,
                                      child: Text(
                                        index.toString(),
                                        style: GoogleFonts.openSans(
                                            fontSize: 64,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Positioned(
                                      top: 40,
                                      bottom: 0,
                                      right: 0,
                                      child: Text(
                                        ' kg',
                                        style: GoogleFonts.openSans(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
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

class WeightItem extends StatelessWidget {
  WeightItem({super.key, required this.id});
  int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 50,
      alignment: Alignment.centerLeft,
      child: Container(
        width: 3,
        height: id % 5 == 0 ? 50 : 20,
        color: red,
      ),
    );
  }
}
