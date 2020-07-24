import 'package:agenda1/Widgets/DayCard.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:flutter/material.dart';
import '../Widgets/CircleDayDate.dart';
import '../Services/CalendarServices.dart';


class DayListe extends StatefulWidget {
  static const routeName = "SingleAgendat";
  @override
  _DayListeState createState() => _DayListeState();
}

class _DayListeState extends State<DayListe> {
  CalendarServices myService = CalendarServices();
  List<DateTime> allDaysOfMonth = [];
  DateTime paramDate ;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    DateTime myParam =   ModalRoute.of(context).settings.arguments;
    // print("@@@@@@@@@@ MY Param $myParam");
    // allDaysOfMonth = myService.generateAgendat();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Container(
            // color: Colors.red,
            height: deviceHeight * .1,
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black, size: 30),
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
          Divider(),
          Container(
            height: MediaQuery.of(context).size.height / 1.17,
            child: ListView(
              children: <Widget>[
                DayCard(),
                DayCard(),
                DayCard(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
