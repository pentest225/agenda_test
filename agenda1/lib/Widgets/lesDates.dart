import 'package:flutter/material.dart';

class LesDates extends StatelessWidget {
  final DateTime day;
  DateTime today = DateTime.now();
  
  LesDates({@required this.day});
  @override
  Widget build(BuildContext context) {
    if(day.day == today.day && day.month == today.month && day.year == today.year){
      print("#################");
    }
    bool isToday = day.day == today.day && day.month == today.month && day.year == today.year;
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, "ontapday");
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
