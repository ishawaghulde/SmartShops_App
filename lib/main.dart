import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartshops/Screens/Auth/AdminLogin.dart';
import 'package:smartshops/Screens/Auth/AdminRegister.dart';
import 'package:smartshops/Screens/Auth/UserRegister.dart';
import 'package:smartshops/Screens/Profile/PersonalInfo.dart';
import 'package:smartshops/Screens/Profile/ProfilePicture.dart';
import 'package:smartshops/Screens/SplashScreen.dart';
import 'file:///C:/Users/Win-10/flutter_projects/smart_shops/lib/Screens/Auth/UserLogin.dart';
import 'package:smartshops/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(new MaterialApp(
        title: 'Smart Shop',
        debugShowCheckedModeBanner: false,
//        theme: new ThemeData(
//          primarySwatch: Colors.transparent,
//        ),
        home: ImageSplashScreen(),

        routes: <String, WidgetBuilder>{
          IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen(),
          USER_LOGIN: (BuildContext context) => new UserLoginScreen(),
          USER_REGISTER: (BuildContext context) => new UserRegisterScreen(),
          ADMIN_LOGIN: (BuildContext context) => new AdminLoginScreen(),
          ADMIN_REGISTER: (BuildContext context) => new AdminRegisterScreen(),
          USER_HOME_SCREEN: (BuildContext context) => new PersonalInfoScreen(),
          PERSONAL_INFO_SCREEN: (BuildContext context) => new PersonalInfoScreen(),
          PROFILE_PICTURE_SCREEN: (BuildContext context) => new ProfilePictureScreen(),
        }));
  });
}


