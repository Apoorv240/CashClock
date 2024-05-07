import 'package:cashclock/pages/alarm_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheet/route.dart';
import 'package:sheet/sheet.dart';
import '../data/DataTransfer.dart';

class AlarmWidget extends StatefulWidget {
  final int idx;

  AlarmWidget({Key? key, required this.idx}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AlarmWidgetState();
  }
}

class AlarmWidgetState extends State<AlarmWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Color(0xFFDBE2EF),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${Data.timerList[widget.idx].time.hour.toString().padLeft(2, '0')}:${Data.timerList[widget.idx].time.minute.toString().padLeft(2, '0')}",
                        style: TextStyle(
                            fontSize: 45,
                            color: Color(0xFF112D4E),
                            fontWeight: FontWeight.bold),
                      ),
                      Text("AM",
                          style: TextStyle(
                              fontSize: 20, color: Color(0xFF112D4E))),
                    ],
                  ),
                  Text(Data.timerList[widget.idx].description,
                      style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          color: Color(0xC8112D4E)))
                ],
              ),
              Row(
                children: [
                  CupertinoSwitch(
                    activeColor: const Color(0xFF3F72AF),
                    value: Data.timerList[widget.idx].enabled,
                    onChanged: (bool? value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        Data.timerList[widget.idx].enabled = value ?? false;
                      });
                    },
                  ),
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Icon(Icons.more_vert, color: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoSheetRoute<void>(
                                builder: (context) => Localizations(
                                    locale: const Locale('en', 'US'),
                                    delegates: const <LocalizationsDelegate<
                                        dynamic>>[
                                      DefaultWidgetsLocalizations.delegate,
                                      DefaultMaterialLocalizations.delegate,
                                      DefaultCupertinoLocalizations.delegate,
                                    ],
                                    child: AlarmInputPage(idx: widget.idx,))));
                      })
                ],
              )
            ],
          ),
        ));
  }
}
