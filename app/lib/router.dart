import 'package:app/src/pages/law_detail/law_detail.dart';
import 'package:app/src/pages/laws_list/laws_list.dart';
import 'package:app/src/pages/navigation/navigation.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    // UNCOMMENT WHEN ARGUMENTS WILL ARRITVE

    switch (settings.name) {
      case "/law-detail":
        return MaterialPageRoute(builder: (_) => LawDetail());
      case "/navigation":
        return MaterialPageRoute(builder: (_) => Navigation());
      case "/laws-list":
        return MaterialPageRoute(builder: (_) => LawsList());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
