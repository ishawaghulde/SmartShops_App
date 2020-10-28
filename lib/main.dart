import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartshops/Screens/SplashScreen.dart';
import 'package:smartshops/routes.dart';
import 'package:smartshops/Constants/ColorGlobal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(new MaterialApp(
        title: 'Smart Shop',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: ColorGlobal.primaryLight,
        ),
        home: ImageSplashScreen(),

        routes: <String, WidgetBuilder>{
          IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen(),
        }));
  });
}


