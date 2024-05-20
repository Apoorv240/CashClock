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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10) ,child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade300,
              ),
              child: Column(
                children: [
                  CupertinoTextField(
                    style: TextStyle(
                      color: Colors.black
                    ),
                    placeholderStyle: TextStyle(
                      color: Colors.grey.shade100,
                    ),
                    placeholder: 'Required',
                    prefix: Text(
                      'Label:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    decoration: BoxDecoration(),
                    onChanged: (String text) {
                      Data.timerList[widget.idx].description = text;
                    },
                  ),
                ],
              ),
            )),
            CupertinoTheme(
                data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      pickerTextStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      )
                    )
                ),
                child: Padding(padding: EdgeInsetsDirectional.only(start: 0, top: 10, end: 5, bottom: 10),child: Container( alignment: AlignmentDirectional.topCenter, child: Flexible(child: CupertinoTimerPicker(
                    backgroundColor: Colors.white70,
                    mode: CupertinoTimerPickerMode.hm,
                    initialTimerDuration: Duration(hours: Data.timerList[widget.idx].time.hour, minutes: Data.timerList[widget.idx].time.minute),
                    onTimerDurationChanged: (Duration time) {
                      Data.timerList[widget.idx].time = TimeOfDay(
                          hour: time.inHours,
                          minute: time.inMinutes-time.inHours*60);
                    })))))
          ],
        ));
  }
}
