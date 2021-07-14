import 'package:flutter/material.dart';
import 'RoundedButtons.dart';
import 'farmersprofile.dart';

class SellRegister extends StatefulWidget {
  const SellRegister({Key key}) : super(key: key);

  @override
  _SellRegisterState createState() => _SellRegisterState();
}

class _SellRegisterState extends State<SellRegister> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Register your Profile "),
        ),
        body: Center(
          child: SizedBox(
            height: 520,
            width: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 10.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        keyboardType: TextInputType.name,
                        onChanged: (value) {
                          FarmersProfile.name = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            hintText: 'Enter your Name'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          FarmersProfile.phNo = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                            hintText: 'Enter your Phone Number'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          FarmersProfile.lat = double.parse(value);
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Latitude',
                            hintText: 'Enter your land latitude'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          FarmersProfile.long = double.parse(value);
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Longitude',
                            hintText: 'Enter your land longitude'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.name,
                        onChanged: (value) {
                          FarmersProfile.landType = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Land type',
                            hintText: 'Enter your land type'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RoundedButtons(
                          title: "Register",
                          textcolour: Colors.white,
                          colour: Colors.redAccent,
                          onpressed: () {
                            Navigator.pushNamed(context, '/sell');
                          })
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
