import 'package:app/src/pages/laws_list/widgets/list_element.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height;
    final appWidth = MediaQuery.of(context).size.width;
    return Container(
      child: SizedBox(
        height: appHeight * 0.65,
        width: appWidth * 0.80,
        child: ListView(
          children: <Widget>[
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
            ListElement(
              law_id: 1,
              law_title: "Hrozně zajímavej titulek",
            ),
          ],
        ),
      ),
    );
  }
}
