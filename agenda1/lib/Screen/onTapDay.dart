import 'package:flutter/material.dart';

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
            color: Colors.red,
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
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "MAR",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "21",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10))),
                      Expanded(
                        child: Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "MER",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "22",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "MER",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "22",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
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
              ],
            ),
          )
        ]),
      ),
    );
  }
}
