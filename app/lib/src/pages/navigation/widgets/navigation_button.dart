import 'package:flutter/material.dart';
import 'package:app/router.dart';
import 'package:sailor/sailor.dart';

class NavigationButton extends StatelessWidget {
  final String pageRoute;
  final String pageTitle;
  final dynamic args;

  NavigationButton({this.pageRoute, this.pageTitle, this.args = null});

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
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
            onTap: () => MyRouter.sailor.navigate(pageRoute,
                args: args,
                navigationType: NavigationType.pushAndRemoveUntil,
                removeUntilPredicate: (route) => route.isFirst),
            child: Center(
                child: Text(
              pageTitle,
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