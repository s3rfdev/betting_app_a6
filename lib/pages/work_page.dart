import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/styles.dart';
import '../widgets/menu/bottom_menu.dart';
import '../widgets/news/categories_tab.dart';
import '../widgets/news/news_image_card.dart';
import 'day1_page.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: Color(0xff0F1925),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            SafeArea(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text('Workout Categories', style: h20S),
                  SizedBox(height: 20),
                  CategoriesTab(),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Get.to(Day1Page()),
                    child: NewsImageCard(
                      title: 'Wake Up Call',
                      time: '04 Workouts  for Beginner',
                      img: 'assets/ns1.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Get.to(Day1Page()),
                    child: NewsImageCard(
                      title: 'Full Body Goal Crusher',
                      time: '07 Workouts  for Beginner',
                      img: 'assets/ns2.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Get.to(Day1Page()),
                    child: NewsImageCard(
                      title: 'Lower Body Strength',
                      time: '05 Workouts  for Beginner',
                      img: 'assets/ns3.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () => Get.to(Day1Page()),
                    child: NewsImageCard(
                      title: 'Drill Essentials',
                      time: '06 Workouts  for Beginner',
                      img: 'assets/ns4.png',
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
