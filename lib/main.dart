import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/main_screen/mainscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'mi card',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('mi card'),
            ),
            body: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    verticalDirection: VerticalDirection.down,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Text('c1',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.blue[200], shape: BoxShape.rectangle),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(2),
                      ),
                      Container(
                        child: Text('c2',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.red[200], shape: BoxShape.rectangle),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(2),
                      ),
                      Container(
                        child: Text('c3',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            shape: BoxShape.rectangle),
                      ),
                    ],
                  ),
                  Column(
                    verticalDirection: VerticalDirection.up,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        child: Text('c1',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.blue[200], shape: BoxShape.rectangle),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(2),
                      ),
                      Container(
                        child: Text('c2',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.red[200], shape: BoxShape.rectangle),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(2),
                      ),
                      Container(
                        child: Text('c3',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Colors.white)),
                        decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            shape: BoxShape.rectangle),
                      ),
                    ],
                  ),
                  Column(
                    verticalDirection: VerticalDirection.up,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 50,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 50,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 50,
                      )
                    ],
                  ),
                  Column(
                    verticalDirection: VerticalDirection.up,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        size: 50,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 50,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 50,
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}

class mi_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.black54,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/alfatih.jpg'),
              ),
              Text('Alfatih Abdelmutalib',
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 28.0,
                      color: Colors.white)),
              Text(
                'COMPUTER ENGINEER',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.yellow,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Colors.yellow.shade300,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+249906078535',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'alfatihtalab7@gmail.com',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: Icon(
              Icons.call,
              color: Colors.black,
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CallMe extends StatefulWidget {
  @override
  _CallMeState createState() => _CallMeState();
}

class _CallMeState extends State<CallMe> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
