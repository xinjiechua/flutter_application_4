import 'package:flutter/material.dart';

hexToString(String hexString){
  hexString = hexString.toUpperCase().replaceAll('#', '');

  if(hexString.length == 6){
    hexString = "FF$hexString";
  }

  return Color(
    int.parse(hexString, radix:16),
  );
}