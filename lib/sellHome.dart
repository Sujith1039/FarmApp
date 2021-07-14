import 'package:flutter/material.dart';
import 'GMap.dart';
import 'farmersprofile.dart';

class SellHome extends StatefulWidget {
  const SellHome({Key key}) : super(key: key);

  @override
  _SellHomeState createState() => _SellHomeState();
}

class _SellHomeState extends State<SellHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Sell Page"),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ))),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: MapSample(),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              FarmersProfile.name,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10.0),
            Text(FarmersProfile.phNo, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10.0),
            Text(FarmersProfile.landType, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
