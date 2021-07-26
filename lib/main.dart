import 'package:farm_app/GMap.dart';
import 'package:farm_app/aa.dart';
import 'package:farm_app/addProduct.dart';
import 'package:farm_app/farmersProfile.dart';
import 'package:farm_app/sellHome.dart';
import 'package:farm_app/sign_in_up.dart';
import 'package:farm_app/try.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'selection.dart';
import 'sellRegister.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/sellRegister',
      routes: {
        '/adds': (context) => Adds(),
        'aa': (context) => Home(),
        '/selection': (context) => SelectionType(),
        '/login': (context) => LoginDemo(),
        '/sell': (context) => SellHome(),
        '/farmersProfile': (context) => FarmersProfile(),
        '/map': (context) => GMap(),
        '/sellRegister': (context) => SellRegister(),
        '/try': (context) => ProfileScreen(),
      },
    );
  }
}
