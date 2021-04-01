import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/shared/navigator_button.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
            ),
            child: Center(
              child: Text(
                'This will be about page soon...',
                style: TextStyle(
                  color: Color(0xFFDFE1F1),
                  fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          NavigatorButton(),
        ],
      ),
    );
  }
}
