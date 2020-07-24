import 'package:flutter/material.dart';
import '../Models/Cours.dart';

class CoursProvider with ChangeNotifier{
  
  List<Cours> items = [
    Cours(dateDebut: DateTime.now().add(Duration(days: 1,hours: -5)),dateFin: DateTime(2020,07,24,17,25))
  ];


}