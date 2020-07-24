import 'dart:math';

import 'package:agenda1/Widgets/DayCard.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:agenda1/Widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import '../Widgets/CircleDayDate.dart';
import '../Services/CalendarServices.dart';
import 'package:indexed_list_view/indexed_list_view.dart';

class DayListe extends StatefulWidget {
  static const routeName = "SingleAgendat";
  @override
  _DayListeState createState() => _DayListeState();
}

class _DayListeState extends State<DayListe> {
  static IndexedScrollController controller;
  GlobalKey<ScaffoldState>_scaffoldKey = GlobalKey<ScaffoldState>();
  CalendarServices myService = CalendarServices();
  List<DateTime> allDaysOfMonth = [];
  DateTime paramDate;
   Widget myAppBar(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu, color: Colors.black, size: 30),
      onPressed: () => Scaffold.of(context).openDrawer(),
    );
  }
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    Map<String, dynamic> myArg = ModalRoute.of(context).settings.arguments;
    paramDate = myArg["date"];

    allDaysOfMonth = myService.generateAgendat(paramDate);
    controller = IndexedScrollController(
        initialIndex: paramDate.day + 1, initialScrollOffset: 30.0);
    return Scaffold(
      key: _scaffoldKey,
        drawer: MyDrawer(),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(children: <Widget>[
                //AppBar
                Container(
                  // color: Colors.red,
                  height: deviceHeight * .1,
                  padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                    icon: Icon(Icons.menu, color: Colors.black, size: 30),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                      SizedBox(width: 20),
                      Text(
                        myService.strMonth(paramDate),
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                      Expanded(child: Row()),
                      IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        onPressed: () =>
                            controller.animateToIndex(paramDate.day + 1),
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
                  child: IndexedListView.builder(
                    minItemCount: 0,
                    maxItemCount: allDaysOfMonth.length - 1,
                    itemBuilder: (context, int index) {
                      print("MyIndex $index");
                      return DayCard(
                        allDaysOfMonth[index],
                      );
                    },
                    controller: controller,
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}
