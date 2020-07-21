import 'package:babiflix_nan/exoAgenda/provider/data.dart';
import 'package:babiflix_nan/exoAgenda/widget/lesDates.dart';
import 'package:flutter/material.dart';

class Lemois extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1 / 2,
              crossAxisCount: 7,
            ),
            itemBuilder: (context, i) {
              return LesDates(
                day: jourData[i]["jour"],
              );
            },
            itemCount: jourData.length),
      ),
    );
  }
}
