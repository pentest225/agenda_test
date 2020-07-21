import './pagedemois.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import '../Providers/data.dart';

class PageUne extends StatefulWidget {
  static const routeName = "PageUne";
  @override
  _PageUneState createState() => _PageUneState();
}

class _PageUneState extends State<PageUne> {
  // var myNumber = dateUtility.daysInMonth(7,2020);
  //   var myCalendar = dateUtility.totalLengthOfDays(7,(myNumber- myNumber +1),2020);
  //   var myCalendarStr = dateUtility.day(myCalendar);
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width:deviceWidth,
        child: Column(
          children: <Widget>[
            //App Barre 
            Container(
              height: deviceHeight * 0.11,
              // color: Colors.red,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              // margin: EdgeInsets.only(top: 15),
              width:deviceWidth ,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black, size: 30),
                  SizedBox(width: 20),
                  Text(
                    "JUI.  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "2020",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Lun.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Mar.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Mer.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Jeu.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Ven.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sam.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Dim.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 570,
              child: PageView(
                children: <Widget>[
                  Lemois(),
                  Lemois(),
                  Lemois(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
