import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationButtonLink extends StatelessWidget {
  final String url;
  final String pageTitle;

  NavigationButtonLink({this.url, this.pageTitle});

  void launchUrl() async {
    await canLaunch(url) ? await launch(url) : print("cant launch $url");
  }

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
            onTap: () => launchUrl(),
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