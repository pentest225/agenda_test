import 'package:agenda1/Widgets/CircleDayDate.dart';
import 'package:agenda1/Widgets/MyDivider.dart';
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
              Positioned(
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