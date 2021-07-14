import 'package:farm_app/GMap.dart';
import 'package:farm_app/sellHome.dart';
import 'package:farm_app/sign_in_up.dart';
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
      initialRoute: '/login',
      routes: {
        '/selection': (context) => SelectionType(),
        '/login': (context) => LoginDemo(),
        '/sell': (context) => SellHome(),
        '/map': (context) => MapSample(),
        '/sellRegister': (context) => SellRegister(),
      },
    );
  }
}
