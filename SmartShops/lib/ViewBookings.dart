import 'package:flutter/material.dart';

class ViewBookingScreen extends StatefulWidget {
  @override
  ViewBookingScreenState createState() => new ViewBookingScreenState();
}

class ViewBookingScreenState extends State<ViewBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "View Bookings",
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
            CircleAvatar(
              radius: width / 14,
              backgroundColor: Colors.black,
              child: Text(
                "A",
                style: TextStyle(fontSize: width / 14, color: Colors.white),
              ),
            ),
            SizedBox(
              width: width / 18,
            ),
            Column(
              children: [
                Text(
                  "Mr Anjaneya",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "10:00 am - 11:00 am",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        )),
  ));
}
