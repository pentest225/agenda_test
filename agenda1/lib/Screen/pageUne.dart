import './pagedemois.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import '../Providers/data.dart';
import '../Widgets/dayCard.dart';
import 'package:date_util/date_util.dart';

class PageUne extends StatefulWidget {
  static const routeName = "PageUne";
  @override
  _PageUneState createState() => _PageUneState();
}

class _PageUneState extends State<PageUne> {
  final today = DateTime.now();
  var calendarController = PageController(
    initialPage: 7
  );

  var dateUtility = DateUtil();

  // var myNumber = dateUtility.daysInMonth(7, 2020); // total jours dans le mois
  // var myCalendar = dateUtility.totalLengthOfDays(7, (myNumber - myNumber + 1), 2020);
  // total jours passe depuis une année arrigine
  // var myCalendarStr = dateUtility.day(myCalendar);
  // Le jour en Strgin
  Widget dayDard(String day, bool isCurrentDay) {
    return Text(
      "$day.",
      style: TextStyle(
        color: isCurrentDay ? Colors.blue : Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    print(today);
    print("Day week");
    print(today.weekday);
    print("Moi");
    print(today.month);
    print("Annee");
    print(today.year);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: deviceWidth,
        child: Column(
          children: <Widget>[
            //App Barre
            Container(
              height: deviceHeight * 0.11,
              // color: Colors.red,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              // margin: EdgeInsets.only(top: 15),
              width: deviceWidth,
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
                  dayDard("Lun", today.weekday == 1),
                  dayDard("Mar", today.weekday == 2),
                  dayDard("Mer", today.weekday == 3),
                  dayDard("Jeu", today.weekday == 4),
                  dayDard("Ven", today.weekday == 5),
                  dayDard("Sam", today.weekday == 6),
                  dayDard("Dim", today.weekday == 7),
                ],
              ),
            ),
            Container(
              height: 570,
              child: PageView(
                controller: calendarController,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // Lemois(),
                  // Lemois(),
                  // Lemois(),
                  Center(child: Text("Un")),
                  Center(child: Text("Deux")),
                  Center(child: Text("trois")), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
