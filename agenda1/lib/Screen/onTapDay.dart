import 'package:agenda1/Widgets/DayCard.dart';
import 'package:agenda1/Widgets/ProgrammeCard.dart';
import 'package:flutter/material.dart';
import '../Widgets/CircleDayDate.dart';

class DayListe extends StatefulWidget {
  static const routeName = "SingleAgendat";
  @override
  _DayListeState createState() => _DayListeState();
}

class _DayListeState extends State<DayListe> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: <Widget>[
          Container(
            // color: Colors.red,
            height: deviceHeight * .1,
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Colors.black, size: 30),
                SizedBox(width: 20),
                Text(
                  "Juillet ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                Expanded(child: Row()),
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
          Container(
            height: MediaQuery.of(context).size.height / 1.17,
            child: ListView(
              children: <Widget>[
                
                Padding(
                  padding: const EdgeInsets.only(left: 70),
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
                                  Icon(Icons.desktop_windows,
                                      color: Colors.white),
                                  SizedBox(width: 5),
                                  Text("Apprendre a coder 12",
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, top: 10),
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
                                  Icon(Icons.desktop_windows,
                                      color: Colors.white),
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
                ),
                //End Block One
                // My Main Container
                DayCard(),
                DayCard(),
                DayCard(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
