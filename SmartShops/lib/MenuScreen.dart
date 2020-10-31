import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'placeOrder.dart';
import 'viewOrder.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  MenuScreenState createState() => new MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> {
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
                                      'assets/images/tasks.png',
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
                                  "scheduled",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "slots",
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
                                      'assets/images/purchase_order.png',
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
                                  "placed",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "order",
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
                                  builder: (context) => ViewOrderScreen()),
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
                                      'assets/images/qr_code.png',
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
                                  "QR ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "Code",
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
                          //   Navigator.pushNamed(context, TECHNICAL_SUPPORT);
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
                                      'assets/images/checklist.png',
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
                                  "Place",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF433d3e),
                                      fontWeight: FontWeight.w600),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  "Order",
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
                                  builder: (context) => placeOrderScreen()),
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
                                      'assets/images/grocery_cart.png',
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
                                  "cart",
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
