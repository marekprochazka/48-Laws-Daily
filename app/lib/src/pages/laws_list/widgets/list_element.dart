import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  final int law_id;
  final String law_title;

  ListElement({this.law_id, this.law_title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: Color(0xFF505A92),
        ),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, "/law-detail"),
          child: Center(
            child: Text(
              "${law_id}. $law_title",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
