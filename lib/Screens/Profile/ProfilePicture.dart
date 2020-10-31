import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartshops/Constants/ColorGlobal.dart';
import 'package:smartshops/UIUtils/UIUtility.dart';
import 'package:smartshops/routes.dart';

class ProfilePictureScreen extends StatelessWidget {
  UIUtility uiUtills = new UIUtility();

  double getHeight(double height, int choice) {
    return uiUtills.getProportionalHeight(height: height, choice: choice);
  }

  double getWidth(double width, int choice) {
    return uiUtills.getProportionalWidth(width: width, choice: choice);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    uiUtills.updateScreenDimension(width: width, height: height);
    return Scaffold(
      backgroundColor: ColorGlobal.primaryLight,
      body: SafeArea(
        child: Container(
          height: height,
          child: Column(
            children: [
              SizedBox(
                height: getHeight(100, 0),
              ),
              Center(
                child: Text(
                  'Choose a Profile Picture',
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      color: ColorGlobal.primaryDark,
                      fontSize: getWidth(22, 0)),
                ),
              ),
              SizedBox(
                height: getHeight(50, 0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 4),
                child: Container(
                  height: 1.0,
                  width: width / 2,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: getHeight(50, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic1.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic2.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic3.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(75, 0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic4.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic5.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, USER_HOME_SCREEN),
                    child: Card(
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: width / 8,
                          child: Image.asset(
                            'assets/images/profilepic6.png',
                            height: width / 6,
                            width: width / 6,
                          ),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(width / 8)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
