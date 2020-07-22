import '../Providers/data.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';

class Lemois extends StatefulWidget {
  @override
  _LemoisState createState() => _LemoisState();
}

class _LemoisState extends State<Lemois> {
  
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
  void generateAgendat(DateTime myDate){
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
    for (var i = 0; i < daysBeforeStart(startDay); i++) {
      myCalendar.add(nbrDayLastMonth - )
    }

  }
  @override
  Widget build(BuildContext context) {
    generateAgendat(DateTime.now());
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
