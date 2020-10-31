import 'package:flutter/material.dart';

class UIUtility {
  factory UIUtility() {
    return _singleton;
  }

  static final UIUtility _singleton = UIUtility._internal();

  UIUtility._internal() {
    print("Instance created UIUtills");
  }

//region Screen Size and Proportional according to device
  double _screenHeight;
  double _screenWidth;

  double get screenHeight => _screenHeight;

  double get screenWidth => _screenWidth;
  final double _refrenceScreenHeight = 813;
  final double _refrenceScreenWidth = 411.4;

  void updateScreenDimension({double width, double height}) {
    _screenWidth = width;
    _screenHeight = height;
  }

  double getProportionalHeight({double height, int choice = 0}) {
//    if (_screenHeight == null) return height;
    if (choice == 0)
      return _screenHeight * height / _refrenceScreenHeight;

    else
      return 0;
  }

  double getProportionalWidth({double width, int choice = 0}) {
//    if (_screenWidth == null) return width;
    var w;
    if (choice == 0)
      w = _screenWidth * width / _refrenceScreenWidth;
    else
      w = 0;
    return w.ceilToDouble();
  }
}
