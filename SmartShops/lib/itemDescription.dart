import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key key}) : super(key: key);

  @override
  ItemScreenState createState() => new ItemScreenState();
}

class ItemScreenState extends State<ItemScreen> {
  Widget getCard(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Center(
        child: Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
                "https://www.macdentalcare.com/pub/photo/2014-09-apple.jpg"),
            Text(
              "Apple",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Price: 100/kg",
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            NumberInputWithIncrementDecrement(
              controller: TextEditingController(),
              min: -3,
              max: 3,
              scaleWidth: 0.75,
              buttonArrangement: ButtonArrangement.rightEnd,
            ),
            RaisedButton(
              child: Text(
                "Add to cart",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => {
                Fluttertoast.showToast(
                    msg: "Item added to cart.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.lightGreen,
                    textColor: Colors.white,
                    fontSize: 16.0)
              },
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Add Items",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
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
          body: getCard(context)),
    );
  }
}
