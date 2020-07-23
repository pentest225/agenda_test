import '../Providers/data.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';
import '../Services/CalendarServices.dart';

class Lemois extends StatefulWidget {
  DateTime myMonth;
  Lemois(this.myMonth);
  @override
  _LemoisState createState() => _LemoisState();
}

class _LemoisState extends State<Lemois> {
  final myService = CalendarServices();
 
  
  List<DateTime> myCalendar = [];
  final today = DateTime.now();
  
  Widget dayDard(String day, bool isCurrentDay) {
    return Text(
      "$day.",
      style: TextStyle(
        color: isCurrentDay ? Colors.blue : Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    myCalendar = myService.generateAgendat(widget.myMonth);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    bool isMonth = myService.isToday(widget.myMonth);
    return Container(
      height: deviceHeight,
      
      child: Column(
        children: <Widget>[
           Container(
            //  color: Colors.green,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  dayDard("Lun", today.weekday == 1 && isMonth),
                  dayDard("Mar", today.weekday == 2 && isMonth),
                  dayDard("Mer", today.weekday == 3 && isMonth),
                  dayDard("Jeu", today.weekday == 4 && isMonth),
                  dayDard("Ven", today.weekday == 5 && isMonth),
                  dayDard("Sam", today.weekday == 6 && isMonth),
                  dayDard("Dim", today.weekday == 7 && isMonth),
                ],
              ),
            ),
          Container(
            height: deviceHeight * .80,
            // color: Colors.red,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.8,
                  crossAxisCount: 7,
                ),
                itemBuilder: (context, i) {
                  return LesDates(
                    day: myCalendar[i],
                  );
                },
                itemCount: myCalendar.length),
          ),
        ],
      ),
    );
  }
}
