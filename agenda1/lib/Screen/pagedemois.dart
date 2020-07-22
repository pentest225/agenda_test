import '../Providers/data.dart';
import '../Widgets/lesDates.dart';
import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';

class Lemois extends StatefulWidget {
  @override
  _LemoisState createState() => _LemoisState();
}

class _LemoisState extends State<Lemois> {
  

  void generateAgendat(DateTime myDate){
    var myDateUtility = DateUtil();
    var nbrDayInMonth = myDateUtility.daysInMonth(myDate.month, myDate.year);
    var totalDayFirst = myDateUtility.totalLengthOfDays(myDate.month, (nbrDayInMonth - nbrDayInMonth + 1), myDate.year);
    var totalDayLast = myDateUtility.totalLengthOfDays(myDate.month, nbrDayInMonth, myDate.year);
    String startDay = myDateUtility.day(totalDayFirst);
    String endDay = myDateUtility.day(totalDayLast);
    

  }
  @override
  Widget build(BuildContext context) {
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
