import 'package:agenda1/Screen/onTapDay.dart';
import 'package:flutter/material.dart';

class LesDates extends StatelessWidget {
  final DateTime day;
  DateTime today = DateTime.now();
  
  LesDates({@required this.day});
  @override
  Widget build(BuildContext context) {
   
    bool isToday = day.day == today.day && day.month == today.month && day.year == today.year;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(DayListe.routeName,arguments:day);
      },
      child: Container(        
        decoration: BoxDecoration(
          // color: Colors.black,
          border: Border.all(width: 0.4, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            isToday?CircleAvatar(
              child: Text(
                day.day.toString(),style: TextStyle(color: Colors.white),
              ),
            ):CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Text(
                day.day.toString(),style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
