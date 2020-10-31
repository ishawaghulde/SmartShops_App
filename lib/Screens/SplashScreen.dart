import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smartshops/Constants/ColorGlobal.dart';
import 'package:smartshops/UIUtils/UIUtility.dart';
import 'package:smartshops/routes.dart';

class ImageSplashScreen extends StatefulWidget {
  @override
  _ImageSplashScreenState createState() => _ImageSplashScreenState();
}

class _ImageSplashScreenState extends State<ImageSplashScreen> {
  UIUtility uiUtills = new UIUtility();
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();
    print("started");
    uiUtills = new UIUtility();
    _loadWidget();
  }

  void navigationPage() {
    Navigator.pushReplacementNamed(context, USER_LOGIN);
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    uiUtills.updateScreenDimension(width: width, height: height);
    return Scaffold(
      backgroundColor: ColorGlobal.primaryDark,
      body: Center(
        child: new Image(image: AssetImage('assets/images/splash_logo.png'), fit: BoxFit.fitHeight,),
      ),
    );
  }
}
