import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:farm_app/addProduct.dart';
import 'package:farm_app/farmersProfile.dart';
import 'package:farm_app/getSponsor.dart';
import 'package:flutter/material.dart';

class SellHome extends StatefulWidget {
  @override
  _SellHomeState createState() => _SellHomeState();
}

class _SellHomeState extends State<SellHome> {
  int _currentIndex = 0;
  int _counter = 0;
  List pages = [
    GetSponsor(),
    GetSponsor(),
    FarmersProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
        backgroundColor: Colors.red,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text('ADD'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.attach_money_outlined),
            title: Text('Sponsor'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle_rounded),
            title: Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
