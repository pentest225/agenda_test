// import 'package:babiflix_nan/exoAgenda/pagedemois.dart';
import 'package:agenda1/Widgets/myDrawer.dart';

import './data.dart';
import './blocHour.dart';
import './blochourItem.dart';

import './lesDates1.dart';
// import 'package:babiflix_nan/exoAgenda/widget/lesRanges.dart';
import 'package:flutter/material.dart';

// import './lesDates.dart';

class OnTapWeek extends StatefulWidget {
  static const routeName = "weekFormat";
  @override
  _OnTapWeekState createState() => _OnTapWeekState();
}

class _OnTapWeekState extends State<OnTapWeek> {
  GlobalKey<ScaffoldState>_scafaldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafaldKey,
      drawer: MyDrawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu, color: Colors.black, size: 30),onPressed: ()=>_scafaldKey.currentState.openDrawer(),),
                  SizedBox(width: 20),
                  Text(
                    "Juillet ",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  Expanded(child: Row()),
                  Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 65),
              width: MediaQuery.of(context).size.width,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.symmetric(
                  vertical: BorderSide(width: 0.4, color: Colors.grey),
                ),
              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jourData.length,
                  itemBuilder: (context, i) {
                    return LesDates1(
                      day: jourData[i]["jour"],
                      sev: sevenDay[i]["sev"],
                    );
                  }),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 2,
                    child: Column(
                      children: <Widget>[
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                        Blochouritem(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
