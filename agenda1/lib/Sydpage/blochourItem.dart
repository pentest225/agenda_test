import 'package:flutter/material.dart';

import 'blocHour.dart';

class Blochouritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 65,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("09h00"),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 0.4, color: Colors.black),
                left: BorderSide(width: 0.4, color: Colors.black),
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.symmetric(
                      horizontal: BorderSide(width: 0.4, color: Colors.grey),
                    ),
                  ),
                ),
                BlocHour(),
                BlocHour(),
                BlocHour(),
                BlocHour(),
                BlocHour(),
                BlocHour(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
