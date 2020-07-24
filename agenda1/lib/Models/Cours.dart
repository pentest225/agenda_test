import 'package:flutter/material.dart';
class Cours {
  String id;
  DateTime dateDebut;
  DateTime dateFin;
  String titre;
  String description;
  Cours({this.id,this.dateDebut,this.dateFin,this.titre,this.description});
  
  Map<String,dynamic>toMap(){
   Map<String,dynamic>toMap = {
     "id":this.id,
     "dateDDebut":this.dateDebut,
     "dateFin":this.dateFin,
     "titre":this.titre,
     "description":this.description,
   };
   return toMap;
  }

}