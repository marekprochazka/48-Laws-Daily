import 'package:app/router.dart';
import 'package:app/src/pages/navigation/widgets/navigation_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sailor/sailor.dart';

class NavigatorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            bottom: 20.0,
          ),
          child: GestureDetector(
            onTap: () => MyRouter.sailor.navigate("/navigation"),
            child: SizedBox(
              child: SvgPicture.asset("assets/images/menu_icon.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
