import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: Column(
            children: [
              child,
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 20.0,
                      bottom: 20.0,
                    ),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/navigation'),
                      child: SizedBox(
                        child: SvgPicture.asset("assets/images/menu_icon.svg"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
