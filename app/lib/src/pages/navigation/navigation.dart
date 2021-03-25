import 'package:app/src/pages/base_page/base_page.dart';
import 'package:app/src/pages/navigation/widgets/navigation_button.dart';
import 'package:app/src/pages/navigation/widgets/navigation_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                page_route: "/law-detail",
                page_title: "Zákon dne",
              ),
              NavigationButton(
                page_route: "/laws-list",
                page_title: "Všechny zákony",
              ),
              NavigationButton(
                page_route: "/TODO-about",
                page_title: "O aplikaci",
              ),
              NavigationButton(
                page_route: "/TODO-report",
                page_title: "Nahlásit chybu",
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, bottom: 20.0),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
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
