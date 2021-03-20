import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String page_route;
  final String page_title;

  NavigationButton({this.page_route, this.page_title});

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    final appHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        width: appWidth * 0.75,
        height: 80,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFACD3CE), Color(0xFF505A92)],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(15.0)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, page_route),
            child: Center(
                child: Text(
              page_title,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
              ),
            )),
          ),
        ),
      ),
    );
  }
}





// child: ConstrainedBox(
//         constraints:
//             BoxConstraints.tightFor(width: appWidth * 0.75, height: 80),
//         child: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15.0),
//             ),
//           ),
//           child: Text("tesxt"),
//         ),
//       ),