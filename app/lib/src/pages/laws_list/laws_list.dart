import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/pages/laws_list/widgets/list.dart';
import 'package:app/src/shared/navigator_button.dart';
import 'package:flutter/material.dart';

class LawsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BasePage(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Text(
            "Všechny zákony",
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: List(),
        ),
        NavigatorButton()
      ],
    )));
  }
}
