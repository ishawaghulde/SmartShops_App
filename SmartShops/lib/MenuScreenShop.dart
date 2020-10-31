import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ViewBookings.dart';
//import 'qrCodeScanner.dart';

class MenuShopScreen extends StatefulWidget {
  const MenuShopScreen({Key key}) : super(key: key);

  @override
  MenuShopScreenState createState() => new MenuShopScreenState();
}

class MenuShopScreenState extends State<MenuShopScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return (WillPopScope(
        child: SafeArea(
            child: new Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  actions: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.exit_to_app,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'MENU',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                body: Stack(children: <Widget>[
                  ClipPath(
                      clipper: ClippingClass(),
                      child: Container(
                        width: width,
                        height: height / 2.75,
                        color: Colors.black,
                      )),
                  Column(children: <Widget>[
                    SizedBox(
                      height: height / 10,
                    ),
                    AutoSizeText(
                      "Welcome Back! ",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: height / 8,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: width / 12,
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: width / 10,
                                    child: Image.asset(
                                      'assets/images/pending.png',
                                      height: width / 10,
                                      width: width / 10,
                                    ),
                                  ),
                                ),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(width / 10)),
                              ),
                              SizedBox(height: 6.0),
                              Container(
//                                    alignment: Alignment.center,
                                  child: Column(children: <Widget>[
                                AutoSizeText(
                                  "View ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "pending",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "orders",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ])),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          // onTap: () {
                          //   Navigator.pushNamed(context, WRITE_TO_ADMIN);
                          // },
                        ),
                        SizedBox(
                          width: width / 12,
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: width / 10,
                                    child: Image.asset(
                                      'assets/images/additem.png',
                                      height: width / 10,
                                      width: width / 10,
                                    ),
                                  ),
                                ),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(width / 10)),
                              ),
                              SizedBox(height: 6.0),
                              Container(
//                                    alignment: Alignment.center,
                                  child: Column(children: <Widget>[
                                AutoSizeText(
                                  "Add ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "item to",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "shelf",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ])),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          // onTap: () {
                          //   Navigator.pushNamed(context, WRITE_MENTOR);
                          // },
                        ),
                        SizedBox(
                          width: width / 12,
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: width / 10,
                                    child: Image.asset(
                                      'assets/images/scanner.png',
                                      height: width / 10,
                                      width: width / 10,
                                    ),
                                  ),
                                ),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(width / 10)),
                              ),
                              SizedBox(height: 6.0),
                              Container(
//                                    alignment: Alignment.center,
                                  child: Column(children: <Widget>[
                                AutoSizeText(
                                  "QR",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "Code ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "scanner",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ])),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => ScanScreen()),
                          //   );
                          // },
                        ),
                        SizedBox(
                          width: width / 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height / 24,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: width / 4,
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: width / 10,
                                    child: Image.asset(
                                      'assets/images/book.png',
                                      height: width / 10,
                                      width: width / 10,
                                    ),
                                  ),
                                ),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(width / 10)),
                              ),
                              SizedBox(height: 6.0),
                              Container(
//                                    alignment: Alignment.center,
                                  child: Column(children: <Widget>[
                                AutoSizeText(
                                  "View",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "Bookings",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ])),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewBookingScreen()),
                            );
                          },
                        ),
                        SizedBox(
                          width: width / 12,
                        ),
                        GestureDetector(
                          child: Column(
                            children: <Widget>[
                              Card(
                                child: Container(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: width / 10,
                                    child: Image.asset(
                                      'assets/images/inventory.png',
                                      height: width / 10,
                                      width: width / 10,
                                    ),
                                  ),
                                ),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(width / 10)),
                              ),
                              SizedBox(height: 6.0),
                              Container(
//                                    alignment: Alignment.center,
                                  child: Column(children: <Widget>[
                                AutoSizeText(
                                  "View ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "inventory",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                              ])),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          // onTap: () {
                          //   Navigator.pushNamed(context, FEEDBACK_SUPPORT);
                          // },
                        ),
                        SizedBox(
                          width: width / 12,
                        ),
                        SizedBox(
                          width: width / 16,
                        ),
                      ],
                    ),
                  ]),
                ])))));
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - size.height / 6);
    path.quadraticBezierTo(size.width / 4, size.height - size.height / 2.5,
        size.width / 2, size.height - size.height / 5);
    path.quadraticBezierTo(
        size.width - size.width / 4,
        size.height - size.height / 11,
        size.width,
        size.height - size.height / 3);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
