import 'package:flutter/material.dart';
import '../Services/CalendarServices.dart';

class CircleDayDate extends StatelessWidget {
  DateTime myDate;
  CircleDayDate(this.myDate);
  CalendarServices myService = CalendarServices();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "${myService.strDay(myDate)}",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  myDate.day.toString(),
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
