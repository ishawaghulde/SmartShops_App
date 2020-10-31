import 'package:flutter/material.dart';
import 'itemDescription.dart';

class placeOrderScreen extends StatefulWidget {
  const placeOrderScreen({Key key}) : super(key: key);

  @override
  placeOrderScreenState createState() => new placeOrderScreenState();
}

class placeOrderScreenState extends State<placeOrderScreen> {
  Widget getCard(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Card(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Image.network(
                  "https://www.macdentalcare.com/pub/photo/2014-09-apple.jpg"),
              Text(
                "Apple",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "100/kg",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      )),
      Positioned(
        top: 0,
        right: 0,
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemScreen()),
            );
          },
          icon: Icon(Icons.add),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Add Items",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (width / 2) / (height / 3.5),
          children: List.generate(100, (index) {
            return new GridTile(
              child: getCard(context),
            );
          }),
        ),
      ),
    );
  }
}
