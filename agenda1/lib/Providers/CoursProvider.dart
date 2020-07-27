import 'package:flutter/material.dart';
import '../Models/Cours.dart';

class CoursProvider with ChangeNotifier {
  List<Cours> _items = [
    Cours(
      dateDebut: DateTime.now().add(Duration(days: 1, hours: -5)),
      dateFin: DateTime.now().add(Duration(
        days: 1,
      )),
      id: DateTime.now().toString(),
      titre: "Cours De Math",
      description: "Métrisé l'utilisation des functions",
    ),
    Cours(
      dateDebut: DateTime.now().add(Duration(days: -1, hours: -5)),
      dateFin: DateTime.now().add(Duration(
        days: 1,
      )),
      id: DateTime.now().toString(),
      titre: "Cours De Math",
      description: "Métrisé l'utilisation des functions",
    ),
    Cours(
      dateDebut: DateTime.now().add(Duration(days: 0, hours: -5)),
      dateFin: DateTime.now().add(Duration(
        days: 1,
      )),
      id: DateTime.now().toString(),
      titre: "Cours De Math",
      description: "Métrisé l'utilisation des functions",
    ),
    Cours(
      dateDebut: DateTime.now().add(Duration(days: 1, hours: 5)),
      dateFin: DateTime.now().add(Duration(
        days: 1,
      )),
      id: DateTime.now().toString(),
      titre: "Cours De Math",
      description: "Métrisé l'utilisation des functions",
    )
  ];


  List<Cours> get item {
    return _items;
  }
}
