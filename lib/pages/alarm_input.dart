import 'package:cashclock/pages/alarm_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sheet/sheet.dart';
import '../data/DataTransfer.dart';

class AlarmInputPage extends StatefulWidget {
  final int idx;

  AlarmInputPage({Key? key, required this.idx}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AlarmInputPageState();
  }
}

class AlarmInputPageState extends State<AlarmInputPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
            backgroundColor: Color(0xFFDBE2EF),
            border:
                Border.fromBorderSide(BorderSide(color: Color(0xFFDBE2EF)))),
        backgroundColor: Color(0xFFF9F7F7),
        child: Row(
          children: [
            CupertinoTheme(
                data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      pickerTextStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      )
                    )
                ),
                child: Flexible(child: CupertinoTimerPicker(
                    backgroundColor: Colors.white70,
                    mode: CupertinoTimerPickerMode.hm,
                    initialTimerDuration: Duration(hours: Data.timerList[widget.idx].time.hour, minutes: Data.timerList[widget.idx].time.minute),
                    onTimerDurationChanged: (Duration time) {
                      Data.timerList[widget.idx].time = TimeOfDay(
                          hour: time.inHours,
                          minute: time.inMinutes-time.inHours*60);
                    })))
          ],
        ));
  }
}
