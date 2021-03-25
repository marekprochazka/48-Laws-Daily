import 'package:app/models/law.dart';
import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/pages/law_detail/widgets/law_text.dart';
import 'package:app/src/shared/navigator_button.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

class LawDetailArgs extends BaseArguments {
  final int lawId;
  LawDetailArgs({this.lawId});
}

class LawDetail extends StatelessWidget {
  final LawDetailArgs args;

  LawDetail(this.args);

  @override
  Widget build(BuildContext context) {
    print(args.lawId);
    return BasePage(
      child: Container(
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
            ),
            NavigatorButton()
          ],
        ),
      ),
    );
  }
}
