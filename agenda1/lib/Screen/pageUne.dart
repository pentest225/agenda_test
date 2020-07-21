import './pagedemois.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import '../Providers/data.dart';
import '../Widgets/dayCard.dart';

class PageUne extends StatefulWidget {
  static const routeName = "PageUne";
  @override
  _PageUneState createState() => _PageUneState();
}

class _PageUneState extends State<PageUne> {
  // var myNumber = dateUtility.daysInMonth(7,2020);
  //   var myCalendar = dateUtility.totalLengthOfDays(7,(myNumber- myNumber +1),2020);
  //   var myCalendarStr = dateUtility.day(myCalendar);
  Widget dayDard(String day,bool isCurrentDay){
    return Text(
      "$day.",
      style: TextStyle(
        color: isCurrentDay?Colors.blue:Colors.black,
      ),
    );
  }
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
                  dayDard("Lun",true),
                  dayDard("Mar",false),
                  dayDard("Mer",false),
                  dayDard("Jeu",false),
                  dayDard("Ven",false),
                  dayDard("Sam",false),
                  dayDard("Dim",false),
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
