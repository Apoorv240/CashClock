import 'package:cashclock/pages/alarm_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sheet/route.dart';
import 'package:sheet/sheet.dart';
import '../data/DataTransfer.dart';

class BetWidget extends StatefulWidget {
  final int idx;

  BetWidget({Key? key, required this.idx}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BetWidgetState();
  }
}

class BetWidgetState extends State<BetWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15), child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Color(0xFFDBE2EF),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Money: ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF112D4E),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$${Data.betList[widget.idx].money.toStringAsPrecision(3)}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF112D4E),),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Snoozes Left: ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF112D4E),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Data.betList[widget.idx].snoozesLeft}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF112D4E),),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Days Left: ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF112D4E),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${Data.betList[widget.idx].daysLeft}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF112D4E),),
                  ),
                ],
              )
            ]

        )
    ));
  }
}
