import 'package:flutter/material.dart';

import '../widgets/intro_tabs/intro_tab1.dart';
import '../widgets/intro_tabs/intro_tab2.dart';
import '../widgets/intro_tabs/intro_tab3.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: Color(0xff0F1925),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
            TabBarView(
              children: [
                IntroTab1(),
                IntroTab2(),
                IntroTab3(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
