import 'package:flutter/material.dart';

class ViewOrderScreen extends StatefulWidget {
  @override
  ViewOrderScreenState createState() => new ViewOrderScreenState();
}

class ViewOrderScreenState extends State<ViewOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "View Order",
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
      body: ListView.builder(
        padding: const EdgeInsets.all(5.5),
        itemCount: 10,
        itemBuilder: _itemBuilder,
      ),
    ));
  }
}

Widget _itemBuilder(BuildContext context, int index) {
  final double width = MediaQuery.of(context).size.width;
  final double height = MediaQuery.of(context).size.height;
  return InkWell(
      child: Card(
    child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.network(
              'https://www.macdentalcare.com/pub/photo/2014-09-apple.jpg',
              height: height / 9,
              width: width / 4,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: width / 18,
            ),
            Column(
              children: [
                Text(
                  "Apples",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Quantity: 3kg",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Price: 100/kg",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Total cost: 300/-",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed: () => {},
              child: Text("Delete"),
            )
          ],
        )),
  ));
}
