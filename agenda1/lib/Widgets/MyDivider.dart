import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .85,
      child: Row(
        children: <Widget>[
          // Circle Number Date End Days name
          // Trait qui montre le tremps actuel
          Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10))),
          Expanded(
            child: Container(
              height: 1,
              // width: MediaQuery.of(context).size.width,
              color: Colors.black,
            ),
          )
          // Fin du trait
        ],
      ),
    );
  }
}
