import 'package:app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CrossButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
          child: GestureDetector(
            onTap: () => MyRouter.sailor.pop(),
            child: SizedBox(
              child: SvgPicture.asset("assets/images/close_menu_icon.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
