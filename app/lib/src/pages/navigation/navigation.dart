import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:app/src/pages/navigation/widgets/navigation_button.dart';
import 'package:app/src/pages/navigation/widgets/navigation_title.dart';
import 'package:app/src/utils/get_daily_law.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/router.dart';

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
              NavigationButton(
                pageRoute: "/law-detail",
                pageTitle: "Zákon dne",
                args: LawDetailArgs(lawId: getDaiyLaw()),
              ),
              NavigationButton(
                pageRoute: "/laws-list",
                pageTitle: "Všechny zákony",
              ),
              NavigationButton(
                pageRoute: "/TODO-about",
                pageTitle: "O aplikaci",
              ),
              NavigationButton(
                pageRoute: "/TODO-report",
                pageTitle: "Nahlásit chybu",
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, bottom: 20.0),
                    child: GestureDetector(
                      onTap: () => MyRouter.sailor.pop(),
                      child: SizedBox(
                        child: SvgPicture.asset(
                            "assets/images/close_menu_icon.svg"),
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
