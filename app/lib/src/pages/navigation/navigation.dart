import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:app/src/pages/navigation/widgets/navigation_button.dart';
import 'package:app/src/pages/navigation/widgets/navigation_button_link.dart';
import 'package:app/src/pages/navigation/widgets/navigation_title.dart';
import 'package:app/src/shared/cross_button.dart';
import 'package:app/src/utils/get_daily_law.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  Navigation();

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
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 14.0,
                ),
                child: Center(
                  child: NavigationTitle(),
                ),
              ),
              FutureBuilder(
                future: getDaiyId(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return NavigationButton(
                      pageRoute: "/law-detail",
                      pageTitle: "Zákon dne",
                      args: LawDetailArgs(lawId: snapshot.data),
                    );
                  } else {
                    return Text("loading");
                  }
                },
              ),
              NavigationButton(
                pageRoute: "/laws-list",
                pageTitle: "Všechny zákony",
              ),
              NavigationButton(
                pageRoute: "/about",
                pageTitle: "O aplikaci",
              ),
              NavigationButtonLink(
                url:
                    "https://github.com/marekprochazka/48-Laws-Daily/issues/new",
                pageTitle: "Nahlásit chybu",
              ),
              CrossButton()
            ],
          ),
        ),
      ),
    );
  }
}
