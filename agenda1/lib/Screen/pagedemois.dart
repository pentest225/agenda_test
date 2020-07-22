import '../Providers/data.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';

class Lemois extends StatefulWidget {
  DateTime myMonth;
  Lemois(this.myMonth);
  @override
  _LemoisState createState() => _LemoisState();
}

class _LemoisState extends State<Lemois> {
  List<int> myCalendar = [];
  final today = DateTime.now();
  int daysBeforeStart(String day){
    int index = 0;
    switch (day) {
      case "Monday":
        index = 0;
        break;
      case "Tuesday":
        index = 1;
        break;
      case "Wednesday":
        index = 2;
        break;
      case "Thursday":
        index = 3;
        break;
      case "Friday":
        index = 4;
        break;
      case "Saturday":
        index = 5;
        break;
      case "Sunday":
        index = 6;
        break;
      default:
        index = 0;
    }
    return index;

  }
  List<int> generateAgendat(DateTime myDate){
    List<int> myCalendar = [];
    var myDateUtility = DateUtil();
    var nbrDayInMonth = myDateUtility.daysInMonth(myDate.month, myDate.year);
    var nbrDayLastMonth = myDateUtility.daysInMonth(myDate.month - 1, myDate.year);
    var totalDayFirst = myDateUtility.totalLengthOfDays(myDate.month, (nbrDayInMonth - nbrDayInMonth + 1), myDate.year);
    var totalDayLast = myDateUtility.totalLengthOfDays(myDate.month, nbrDayInMonth, myDate.year);
    String startDay = myDateUtility.day(totalDayFirst);
    String endDay = myDateUtility.day(totalDayLast);
   
    print("Nombre de jour dans le moi $nbrDayInMonth");
    print("The Start Day $startDay");
    print("The End Day $endDay");

    // Creation du debut du calendrier 
    for (var i = 0; i < daysBeforeStart(startDay); i++) {
      myCalendar.insert(0,nbrDayLastMonth - i);
    }
    //Contenu du calendrier
    for (var i = 0; i < nbrDayInMonth; i++) {
      myCalendar.add(i+1);
    }
    //Fin du calendrier 
    for (var i = 0; i < ( 42 - (nbrDayInMonth + daysBeforeStart(startDay))) ; i++) {
     
      myCalendar.add(i+1);
    }
    // print("Taille du Calendrier ${myCalendar.length}");
    // print("End Calendar Function $myCalendar");
    return myCalendar;

  }
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
    myCalendar = generateAgendat(widget.myMonth);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight,
      
      child: Column(
        children: <Widget>[
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  dayDard("Lun", today.weekday == 1),
                  dayDard("Mar", today.weekday == 2),
                  dayDard("Mer", today.weekday == 3),
                  dayDard("Jeu", today.weekday == 4),
                  dayDard("Ven", today.weekday == 5),
                  dayDard("Sam", today.weekday == 6),
                  dayDard("Dim", today.weekday == 7),
                ],
              ),
            ),
          Container(
            height: deviceHeight * .75,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 2,
                  crossAxisCount: 7,
                ),
                itemBuilder: (context, i) {
                  return LesDates(
                    day: myCalendar[i].toString(),
                  );
                },
                itemCount: myCalendar.length),
          ),
        ],
      ),
    );
  }
}
