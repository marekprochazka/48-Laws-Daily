import 'package:app/src/pages/law_detail/widgets/law_text.dart';
import 'package:flutter/material.dart';

class LawDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Center(
              child: Text(
                "Zákon 1",
                style: TextStyle(
                  color: Color(0xFFDFE1F1),
                  fontSize: 32.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Center(
              child: Text(
                "Nějakej zákon",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
            ),
            child: LawText(),
          )
        ],
      ),
    );
  }
}
