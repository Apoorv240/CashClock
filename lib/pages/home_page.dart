import 'package:cashclock/pages/alarms.dart';
import 'package:cashclock/pages/betting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.systemBlue,
          activeColor: CupertinoColors.white,
          inactiveColor: CupertinoColors.white.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.alarm), label: 'Alarms'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.money_dollar), label: 'Bet Money')
          ],
        ),
        tabBuilder: (context, index) {
          Widget nextPage;
          if (index == 0) nextPage = AlarmsPage();
          else nextPage = BettingPage();

          return nextPage;
        }
    );
  }
}