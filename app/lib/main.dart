import 'dart:ffi';

import 'package:app/init.dart';
import 'package:app/router.dart';
import 'package:app/services/api_service.dart';
import 'package:app/services/database_service.dart';
import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:app/src/pages/splash_screen/splash_screen.dart';
import 'package:app/src/utils/get_daily_law.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

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
        home: FutureBuilder(
          future: MyInit.initialize(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return FutureBuilder(
                  future: getDaiyId(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return LawDetail(LawDetailArgs(lawId: snapshot.data));
                    } else {
                      return Text("loading");
                    }
                  });
            } else {
              return SplashScreen();
            }
          },
        ));
  }
}
