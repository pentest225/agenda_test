import 'package:agenda1/Services/CalendarServices.dart';
import 'package:agenda1/Widgets/CircleDayDate.dart';
import 'package:agenda1/Widgets/MyDivider.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  DateTime myDate;
  bool isToday;
  DayCard(this.myDate,[this.isToday]);
  CalendarServices myService = CalendarServices();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleDayDate(myDate),
          Container(
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
              Column(
                children: <Widget>[
                  ProgrammeCard(),
                  ProgrammeCard(),
                  ProgrammeCard(),
                ],
              ),
              if(myService.isToday(myDate))Positioned(
                top: 0,
                bottom: 0,
                left: -12,
                right: 0,
                child: MyDivider(),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
