import 'package:flutter/material.dart';
import 'MenuScreen.dart';
import 'MenuScreenShop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text("Page 1"),
                  ),
                  body: Center(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          child: Text("Next Page"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuScreen()),
                            );
                          },
                          color: Colors.red,
                        ),
                        MaterialButton(
                          child: Text("Next Page"),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuShopScreen()),
                            );
                          },
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                )));
  }
}
