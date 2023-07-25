import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Day2Page extends StatelessWidget {
  const Day2Page({super.key});

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
                'assets/day2.png',
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
                      Text('Simple Warm-Up Exercises', style: h20S),
                      SizedBox(height: 10),
                      // Text('04 Workouts for Beginner', style: s13Red),
                      SizedBox(height: 20),
                      Image.asset('assets/info.png'),
                      SizedBox(height: 20),
                      Text(
                        'Starting position - calm stance, shoulders deployed, legs slightly bent, arms lowered or slightly spread apart. You sit down on the leg in the direction of which you plan to roll (doesn’t work? Then stretching exercises will help you!). Lower the knee of the "rolling leg" to the ground and at the same time put your palms on the ground a little higher and on both sides of it.',
                        style: s13White,
                      ),
                      SizedBox(height: 40),
                      Center(child: Image.asset('assets/play.png')),
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
