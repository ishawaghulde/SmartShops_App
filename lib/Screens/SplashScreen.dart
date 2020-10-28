import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smartshops/Constants/ColorGlobal.dart';
import 'package:smartshops/UIUtils/UIUtility.dart';

class ImageSplashScreen extends StatefulWidget {
  @override
  _ImageSplashScreenState createState() => _ImageSplashScreenState();
}

class _ImageSplashScreenState extends State<ImageSplashScreen> {
  UIUtility uiUtills = new UIUtility();

  @override
  void initState() {
    super.initState();
    print("started");
    uiUtills = new UIUtility();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorGlobal.primaryLight,
    );
  }
}
