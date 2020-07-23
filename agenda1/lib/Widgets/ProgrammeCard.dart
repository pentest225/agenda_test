import 'package:flutter/material.dart';

class ProgrammeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      // padding: const EdgeInsets.only(left: 70),
      child: Row(
        children: <Widget>[
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              // image: DecorationImage(
              //     image: AssetImage("images/propos.jpg"),
              //     fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.desktop_windows, color: Colors.white),
                      SizedBox(width: 5),
                      Text("Apprendre a coder",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("09h00 - 13h00",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
