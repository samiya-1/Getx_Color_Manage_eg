import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomescreenController extends GetxController {
  late Color scaffoldColor = Colors.white;
  //Color get scaffoldColors => scaffoldColor;
  oncolorclick(Color color) {
    scaffoldColor = color;
    update();
  }
}
