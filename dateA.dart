import 'package:flutter/material.dart';

class DateA extends StatelessWidget {
  final String jour;
  DateA({@required this.jour});
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 10),
      width: deviceWidth / 7,
      height: deviceHeight * .9,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.2, color: Colors.grey)),
      child: Text(jour),
    );
  }
}
