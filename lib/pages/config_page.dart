import 'package:betting1/pages/home_page.dart';

import 'package:betting1/widgets/config_tabs/config_tab1.dart';
import 'package:betting1/widgets/config_tabs/config_tab3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/config_tabs/config_tab2.dart';
import '../widgets/config_tabs/config_tab4.dart';
import '../widgets/config_tabs/config_tab5.dart';
import '../widgets/config_tabs/config_tab6.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({super.key});

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: index,
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
              controller: controller,
              children: [
                ConfigTab1(next: () => controller.index++),
                ConfigTab2(next: () => controller.index++),
                ConfigTab3(next: () => controller.index++),
                ConfigTab4(next: () => controller.index++),
                ConfigTab5(next: () => controller.index++),
                ConfigTab6(next: () => Get.to(HomePage())),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
