import 'package:flutter/material.dart';
import 'package:mi_card/allapps/bmi/input_page.dart';

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))),
      debugShowCheckedModeBanner: false,
    );
  }
}
