import 'package:app/router.dart';
import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:flutter/material.dart';

class ListElement extends StatelessWidget {
  final int lawId;
  final String lawTitle;

  ListElement({this.lawId, this.lawTitle});

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
          onTap: () => MyRouter.sailor.navigate("/law-detail",
              args: LawDetailArgs(lawId: lawId, isDaily: false)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "${lawId}. $lawTitle",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
