import 'package:betting1/pages/day2_page.dart';
import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/buttons/button_red.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import '../widgets/news/image_mini_card.dart';

class Day1Page extends StatelessWidget {
  const Day1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomMenu(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: greyBlue,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/day1.png',
                fit: BoxFit.fitWidth,
                scale: 0.5,
              ),
            ),
            Positioned(
              top: 280,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: greyBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Day 01 - Warm Up', style: h20S),
                      SizedBox(height: 10),
                      Text('04 Workouts for Beginner', style: s13Red),
                      SizedBox(height: 20),
                      Image.asset('assets/info.png'),
                      SizedBox(height: 20),
                      Text(
                        'Want your body to be healthy. Join our program with directions according to body’s goals. Increasing physical strength is the goal of strenght training. Maintain body fitness by doing physical exercise at least 2-3 times a week. ',
                        style: s13White,
                      ),
                      SizedBox(height: 20),
                      ImageMiniCard(
                        title: 'Simple Warm-Up Exercises',
                        img: 'assets/m1.png',
                      ),
                      SizedBox(height: 20),
                      ImageMiniCard(
                        title: 'Stability Training Basics',
                        img: 'assets/m2.png',
                      ),
                      SizedBox(height: 40),
                      Center(
                        child: Container(
                            alignment: Alignment.center,
                            width: 300,
                            child: InkWell(
                                onTap: () => Get.to(Day2Page()),
                                child: ButtonRed(title: 'Start Workout'))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: SafeArea(
                  child: InkWell(
                onTap: () => Get.back(),
                child: Icon(Icons.arrow_back_ios, color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
