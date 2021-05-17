import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizlerApp extends StatefulWidget {
  @override
  _QuizlerAppState createState() => _QuizlerAppState();
}

class _QuizlerAppState extends State<QuizlerApp> {
  var questions = {
    'q1': [
      'A man from the USA consumed his 26,000th '
          'Big Mac on 11th October 2012, after eating at '
          'least one a day for forty years',
      'True'
    ],
    'q2': [
      'The longest distance swam underwater in one breath is 200metres.',
      'True'
    ],
    'q3': ['The world’s tallest living man is 251cm / 8 ft 3 in. ', 'True']
  };
  List<Widget> icons = [];
  var count = 0;
  var score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Quizler app',
          style:
              GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white)),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                questions.values.elementAt(count)[0],
                style: GoogleFonts.alegreyaSc(
                    color: Colors.black87, fontSize: 40.0),
              ),
            ),
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      getNextQuestion();
                      checkQuestion(answer: 'true');
                    },
                    child: Text('True'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepOrangeAccent)),
                  ),
                  OutlinedButton(
                      onPressed: () {
                        getNextQuestion();
                        checkQuestion(answer: 'false');
                      },
                      child: Text('False')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: icons,
            )
          ],
        ),
      ),
    );
  }

  void getNextQuestion() {
    setState(() {
      if (questions.values.last == questions.values.elementAt(count)) {
        count = 2;
      } else {
        count++;
      }
    });
  }

  void checkQuestion({String answer}) {
    setState(() {
      if (icons.length < questions.length) {
        if (questions.values.elementAt(count)[1].toLowerCase() ==
            answer.toLowerCase()) {
          score = score + 10;
          icons.add(Icon(
            Icons.check,
            color: Colors.lightGreenAccent,
          ));
        } else {
          icons.add(Icon(Icons.auto_fix_off, color: Colors.red));
        }
      } else {
        Fluttertoast.showToast(msg: 'you end the game');
      }
    });
  }
}
