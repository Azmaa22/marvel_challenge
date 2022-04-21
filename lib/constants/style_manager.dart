import 'package:flutter/material.dart';
import 'package:marvel_app/constants/color_manager.dart';

class StyleManager {
  static const TextStyle mainHeader = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );
  static const TextStyle subHeader = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
  );
  static const TextStyle titleBtn = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 15.0,
  );
  static const TextStyle rating = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 20.0,
  );
  static const TextStyle paragraph = TextStyle(
    color: ColorManager.secondary,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );
}
