import 'dart:ffi';

import 'package:app/router.dart';
import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Void> initDatabase() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool didStarted = prefs?.getBool("didStarted") ?? false;
    if (!didStarted) {
      print("GOING FOR DATABASE INIT");
      prefs.setBool("didStarted", true);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/law-detail',
        onGenerateRoute: MyRouter.generateRoute,
        theme: ThemeData(
          fontFamily: 'Ubuntu',
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: LawDetail());
  }
}
