import 'package:app/models/law.dart';
import 'package:app/services/database_service.dart';
import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/pages/law_detail/widgets/law_text.dart';
import 'package:app/src/shared/back_button.dart';
import 'package:app/src/shared/cross_button.dart';
import 'package:app/src/shared/navigator_button.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

class LawDetailArgs extends BaseArguments {
  final int lawId;
  final bool isDaily;
  LawDetailArgs({this.lawId, this.isDaily = true});
}

class LawDetail extends StatelessWidget {
  final LawDetailArgs args;

  LawDetail(this.args);

  @override
  Widget build(BuildContext context) {
    DatabaseService _db = DatabaseService();
    return BasePage(
      child: FutureBuilder(
        future: _db.fetchLaw(args.lawId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Center(
                      child: Text(
                        "Zákon ${snapshot.data.id}",
                        style: TextStyle(
                          color: Color(0xFFDFE1F1),
                          fontSize: 32.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Center(
                      child: Text(
                        snapshot.data.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                    ),
                    child: LawText(text: snapshot.data.content),
                  ),
                  args.isDaily ? NavigatorButton() : MyBackButton()
                ],
              ),
            );
          } else {
            return Text("loading...");
          }
        },
      ),
    );
  }
}
