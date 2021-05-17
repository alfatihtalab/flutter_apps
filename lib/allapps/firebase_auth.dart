import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirebaseAuthTest extends StatefulWidget {
  @override
  _FirebaseAuthTestState createState() => _FirebaseAuthTestState();
}

class _FirebaseAuthTestState extends State<FirebaseAuthTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('firebase auth test'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('sign up')),
              ElevatedButton(onPressed: () {}, child: Text('sign in')),
              ElevatedButton(onPressed: () {}, child: Text('sign out')),
              ElevatedButton(onPressed: () {}, child: Text('delete account'))
            ],
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
