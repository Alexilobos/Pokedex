import 'package:flutter/material.dart';

class UtilsColors {
  static Color getBackgroundColor(String type1){
    Map<String, Color> colors = {
      'grass': Colors.green[300]!,
      'fire': Colors.red[300]!,
      'water': Colors.lightBlueAccent[200]!,
      'bug': Colors.lightGreen[300]!,
      'normal': Colors.grey[400]!,
      'poison': Colors.purple[300]!,
      'electric': Colors.yellow[300]!,
      'ground': Colors.amber[200]!,
      'fairy': Colors.pink[200]!,
      'fighting': Colors.blueGrey,
      'psychic': Colors.pinkAccent,
      'rock': Colors.brown[300]!,
      'ghost': Colors.indigo[300]!,
      'ice': Colors.lightBlueAccent[100]!,
      'dragon': Colors.deepPurple[200]!,
      'dark': Colors.brown,
      'steel': Colors.blueGrey[200]!,
      'flyin': Colors.lightBlue[300]!,
    };
    return colors[type1.toLowerCase()]!;
  }
}

class Utils{    //aumenta cero a la izquierda
  static String getFilledString(int id){
    String strid = id.toString(); 
    return new List.filled(3 - strid.length, '0').join('') + strid;
  }
}