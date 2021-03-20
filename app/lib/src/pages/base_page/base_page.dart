import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget child;

  BasePage({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[Color(0xFF899EC7), Color(0xFF4756A7)],
                stops: [0.0, 1.0])),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}
