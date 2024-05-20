import 'package:flutter/cupertino.dart';
import 'bet_widget.dart';
import 'package:flutter/material.dart';

class BettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BettingPageState();
  }
}

class BettingPageState extends State<BettingPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Color(0xFFF9F7F7),
        child: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 10, left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bets',
                    style: TextStyle(
                        color: Color(0xFF112D4E),
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  )),
            ),
            BetWidget(idx: 0),
            BetWidget(idx: 1),
            SizedBox(
                width: 75,
                height: 75,
                child: CupertinoButton(
                    padding: EdgeInsets.zero,
                    color: Color(0xFFDBE2EF),
                    child: const Icon(Icons.add),
                    onPressed: () {
                      // Data.timerList.add(TimerData(TimeOfDay(hour: 0, minute: 0), "aaa", true));
                      // int idx = Data.timerList.length - 1;
                      // alarmWidgets.add(AlarmWidget(idx: idx));
                      // setState(() {
                      //
                      // });
                    }
                )
            ),
          ],
        )));
  }
}
