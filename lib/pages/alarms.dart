import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'alarm_widget.dart';
import '../data/DataTransfer.dart';

class AlarmsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AlarmsPageState();
  }
}

class AlarmsPageState extends State<AlarmsPage> {
  var alarmWidgets = <AlarmWidget>[AlarmWidget(idx: 0)];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: const Color(0xFFF9F7F7),
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 10, left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Alarms',
                      style: TextStyle(
                          color: Color(0xFF112D4E),
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: alarmWidgets
                )
              ),
              SizedBox(
                width: 75,
                height: 75,
                child: CupertinoButton(
                  padding: EdgeInsets.zero,
                    color: Color(0xFFDBE2EF),
                    child: const Icon(Icons.add),
                    onPressed: () {
                      Data.timerList.add(TimerData(TimeOfDay(hour: 0, minute: 0), "aaa", true));
                      int idx = Data.timerList.length - 1;
                      alarmWidgets.add(AlarmWidget(idx: idx));
                      setState(() {

                      });
                    }
                )
              ),
            ],
          )
        )
    );
  }
}