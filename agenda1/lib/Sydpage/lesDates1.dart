import 'package:flutter/material.dart';

class LesDates1 extends StatelessWidget {
  final String day;
  final String sev;
  LesDates1({@required this.day, @required this.sev});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        children: <Widget>[
          Text(
            sev,
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.blue)),
            child: Text(
              day,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              height: 10,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.symmetric(
                  horizontal: BorderSide(width: 0.4, color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
