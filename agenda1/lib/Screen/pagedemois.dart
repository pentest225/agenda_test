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
  List<DateTime> myCalendar = [];
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
  List<DateTime> generateAgendat(DateTime myDate){
    List<DateTime> myCalendar = [];
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

    // Creation du debut du calendrier (les dates du mois precedant)
    for (var i = 0; i < daysBeforeStart(startDay); i++) {
      DateTime newDate = DateTime(myDate.year,myDate.month -1,nbrDayLastMonth - i);
      myCalendar.insert(0,newDate);
    }
    //Contenu du calendrier (les date du moi courent )
    for (var i = 0; i < nbrDayInMonth; i++) {
      DateTime newDate = DateTime(myDate.year,myDate.month ,i + 1);
      myCalendar.add(newDate);
    }
    //Fin du calendrier (les dates du moin suivent )
    for (var i = 0; i < ( 42 - (nbrDayInMonth + daysBeforeStart(startDay))) ; i++) {
     DateTime newDate = DateTime(myDate.year,myDate.month + 1,i + 1);
      myCalendar.add(newDate);
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
           Container(
            //  color: Colors.green,
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
