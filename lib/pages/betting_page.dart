import 'package:flutter/cupertino.dart';

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
        backgroundColor: const Color(0xFFF9F7F7),
        child: SingleChildScrollView(
          child: Column(
          children: [
            const Padding(
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
          ],
        )));
  }
}
