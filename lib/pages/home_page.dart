import 'package:betting1/pages/work_page.dart';
import 'package:betting1/widgets/news/news_image_card.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../widgets/menu/bottom_menu.dart';
import '../widgets/news/categories_tab.dart';
import '../widgets/news/header_news.dart';
import 'day1_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                child: Column(
              children: [
                SizedBox(height: 20),
                HeaderNews(title: 'Today Workout Plan', date: 'Mon 26 Apr'),
                SizedBox(height: 20),
                InkWell(
                  onTap: () => Get.to(Day1Page()),
                  child: NewsImageCard(
                    title: 'Day 01 - Warm Up',
                    time: '07:00 - 08:00 AM',
                    img: 'assets/news1.png',
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () => Get.to(WorkPage()),
                  child:
                      HeaderNews(title: 'Workout Categories', date: 'See All'),
                ),
                SizedBox(height: 20),
                CategoriesTab(),
                SizedBox(height: 20),
                Container(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () => Get.to(Day1Page()),
                        child: NewsImageCard(
                          title: 'Learn the Basic of Training',
                          time: '06 Workouts  for Beginner',
                          img: 'assets/news2.png',
                        ),
                      ),
                      SizedBox(width: 20),
                      NewsImageCard(
                        title: 'Learn the Basic of Training',
                        time: '06 Workouts  for Beginner',
                        img: 'assets/news3.png',
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                HeaderNews(title: 'New Workouts', date: ''),
                SizedBox(height: 10),
                Container(
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () => Get.to(Day1Page()),
                        child: Image.asset('assets/n1.png'),
                      ),
                      SizedBox(width: 20),
                      Image.asset('assets/n2.png'),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
