import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

import '../res/styles.dart';
import '../widgets/intro_tabs/intro_tab1.dart';
import '../widgets/intro_tabs/intro_tab2.dart';
import '../widgets/intro_tabs/intro_tab3.dart';
import '../widgets/menu/bottom_menu.dart';
import '../widgets/news/header_news.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        index: 1,
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
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: greyBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: SafeArea(
                    child: TableCalendar(
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                        titleTextStyle: s17,
                        formatButtonTextStyle: s17,
                        formatButtonDecoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        leftChevronIcon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        rightChevronIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      daysOfWeekHeight: 30,
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: s16,
                        weekendStyle: s16,
                      ),
                      calendarStyle: CalendarStyle(
                        defaultTextStyle: s17,
                        holidayTextStyle: s17,
                        weekendTextStyle: s17,
                      ),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      calendarFormat: CalendarFormat.week,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SvgPicture.asset('assets/big_circle.svg'),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/heart.svg'),
                      SvgPicture.asset('assets/steps.svg'),
                      SvgPicture.asset('assets/time.svg'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                HeaderNews(date: '', title: 'Finished Workout'),
                SizedBox(height: 20),
                SvgPicture.asset('assets/f1.svg'),
                SizedBox(height: 10),
                SvgPicture.asset('assets/f2.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
