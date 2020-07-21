import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  String day;
  bool isCurrentDay = false;
  DayCard(this.day,[this.isCurrentDay]);
  @override
  Widget build(BuildContext context) {
    return Text(
      "$day.",
      style: TextStyle(
        color: isCurrentDay?Colors.blue:Colors.black,
      ),
    );
  }
}
