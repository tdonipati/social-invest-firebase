import 'package:flutter/material.dart';
import 'UI/Activities/Authentication/LandingPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'UI/Activities/Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return new MediaQuery(
              data: new MediaQueryData(),
              child: new MaterialApp(home: new LandingPage()));
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return new MediaQuery(
              data: new MediaQueryData(),
              child: new MaterialApp(home: new LandingPage()));
        }
        return new MediaQuery(
            data: new MediaQueryData(),
            child: new MaterialApp(home: new LandingPage()));
      },
    );
  }
}
