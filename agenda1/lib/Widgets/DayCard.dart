import 'package:agenda1/Widgets/CircleDayDate.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleDayDate(),
          Column(
            children: <Widget>[
              //Start Block Two
              // 1=> Date Section
              //2=> Time Table Section
              ProgrammeCard(),
              ProgrammeCard(),
              ProgrammeCard(),
            ],
          ),
        ],
      ),
    );
  }
}
