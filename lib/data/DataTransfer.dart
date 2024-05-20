import 'package:flutter/material.dart';

class Data {
  static var timerList = [
    TimerData(const TimeOfDay(hour: 2, minute: 50), "Wake Up!!!", true),
    TimerData(const TimeOfDay(hour: 5, minute: 40), "Wake Up!!", false),
    TimerData(const TimeOfDay(hour: 6, minute: 10), "Wake Up!", true),
  ];
  static var betList = [
    BetData(10, 5, 3),
    BetData(14, 7, 20),
    BetData(10, 10, 10)
  ];
}

class TimerData {
  TimerData(this.time, this.description, this.enabled);
  TimeOfDay time = const TimeOfDay(hour: 0, minute: 0);
  String description = "";
  bool enabled = true;
}

class BetData {
  BetData(this.daysLeft, this.snoozesLeft, this.money);
  int daysLeft = 7;
  int snoozesLeft = 10;
  double money = 10;
}