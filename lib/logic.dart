import 'package:flutter/material.dart';


String calculateAverage({String l, String m ,String n}){
  double l1 =double.tryParse(l)??0;
  double l2 =double.tryParse(l)??0;
  double t =double.tryParse(l)??0;
  double average =(l2-l1)/t;
  return '${average}';
}