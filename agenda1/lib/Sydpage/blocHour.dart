import 'package:flutter/material.dart';

class BlocHour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
          right: BorderSide(width: 0.4, color: Colors.grey),
        ),
      ),
    );
  }
}
