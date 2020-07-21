import 'package:babiflix_nan/exoAgenda/pagedemois.dart';
import 'package:babiflix_nan/exoAgenda/widget/lesDates.dart';
import 'package:flutter/material.dart';

import 'provider/data.dart';

class PageUne extends StatefulWidget {
  @override
  _PageUneState createState() => _PageUneState();
}

class _PageUneState extends State<PageUne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black, size: 30),
                  SizedBox(width: 20),
                  Text(
                    "JUI.  ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "2020",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Icon(
                    Icons.calendar_today,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Lun.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Mar.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Mer.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Jeu.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Ven.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Sam.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Dim.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 670,
              child: PageView(
                children: <Widget>[
                  Lemois(),
                  Lemois(),
                  Lemois(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
