import 'package:flutter/material.dart';

class LesDates extends StatelessWidget {
  final String day;

  LesDates({@required this.day});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "ontapday");
      },
      child: Container(
        height: 100,
        width: 30,
        decoration: BoxDecoration(
          border: Border.all(width: 0.4, color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              day,
            )
          ],
        ),
      ),
    );
  }
}
