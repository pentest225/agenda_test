import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Domi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(
          "Juillet",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: <Widget>[
          Icon(
            Icons.calendar_today,
            color: Colors.black,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "LUN",
                      ),
                      Text(
                        "13",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 19.5,
                ),
                Container(
                  width: 0.6,
                  height: 50,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 0.8,
              color: Colors.grey,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.25,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 230),
                        child: Column(
                          children: <Widget>[
                            Text("01:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("02:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("03:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("04:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("05:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("06:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("07:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("08:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("09:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("10:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("11:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("12:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("13:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("14:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("15:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("16:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("17:00"),
                            SizedBox(
                              height: 30,
                            ),
                            Text("18:00"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("20:00"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("21:00"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("22:00"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("23:00"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22, bottom: 240),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            border: Border(
                                left:
                                    BorderSide(color: Colors.grey, width: 0.5)),
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 0.8,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
