import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mi_card/allapps/bmi/bmi.dart';
import 'package:mi_card/allapps/imagepicker.dart';
import 'package:mi_card/allapps/quizler/quizler_orig.dart';
import 'package:mi_card/dice_app/dice.dart';

import 'file:///C:/Users/Alfatih/Desktop/flutter_projects/mi_card/lib/allapps/quizler/quizler_app.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('main app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: false,
          children: [
            startApp(cls: DiceApp(), appName: 'Dicee app'),
            startApp(cls: imagePicker(), appName: 'image picker'),
            startApp(
                cls: QuizlerApp(),
                appName: 'quiz app',
                colors: MaterialStateProperty.all<Color>(Colors.deepOrange)),
            startApp(
                cls: QuizlerOriginApp(),
                appName: 'Quizler',
                colors: MaterialStateProperty.all<Color>(Colors.pink)),
            startApp(cls: BmiApp(), appName: 'BMI Calculator'),
          ],
        ),
      ),
    );
  }

  Widget startApp({Object cls, String appName, MaterialStateProperty colors}) {
    return ElevatedButton(
        style: ButtonStyle(backgroundColor: colors),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cls),
          );

          Fluttertoast.showToast(
              msg: 'welcome to $appName',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.lightBlueAccent,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        child: Text(appName));
  }
}
