import 'dart:ffi';

import 'package:app/router.dart';
import 'package:app/services/database_service.dart';
import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  MyRouter.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future initDatabase() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool didStarted = prefs?.getBool("didStarted") ?? false;
    if (!didStarted) {
      DatabaseService _dbService = DatabaseService();
      await _dbService.initDatabase();
      print("INITIALIZING DATABSE");
      prefs.setBool("didStarted", true);
    }
  }

  @override
  void initState() {
    super.initState();
    initDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: MyRouter.sailor.generator(),
        navigatorKey: MyRouter.sailor.navigatorKey,
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
        home: LawDetail(LawDetailArgs(lawId: 1)));
  }
}
