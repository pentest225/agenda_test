import 'package:flutter/material.dart';

class LesDates extends StatelessWidget {
  final DateTime day;
  DateTime today = DateTime.now();
  bool isToday = day.day == today.day && day.month == today.month && day.year == today.year;
  LesDates({@required this.day});
  @override
  Widget build(BuildContext context) {
    if(day.day == today.day && day.month == today.month && day.year == today.year){
      print("#################");
    }
    return InkWell(
      onTap: () {
        //Navigator.pushNamed(context, "ontapday");
      },
      child: Container(
        height: 50,
        
        decoration: BoxDecoration(
          // color: Colors.black,
          border: Border.all(width: 0.4, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              day.day.toString(),
            )
          ],
        ),
      ),
    );
  }
}
