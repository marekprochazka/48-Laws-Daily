import 'package:flutter/material.dart';

class LawText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    final appHeight = MediaQuery.of(context).size.height;

    final temporaryText =
        "Vždy se snažte, aby se ti, kdo jsou nad vámi, cítili pohodlně nadřazeně. Toužíte-li je potěšit nebo na ně udělat dojem, nezacházejte příliš daleko, až budete svůj talent předvádět. Mohli byste totiž dosáhnout pravého opaku - vzbudíte v nich strach a pocit nejistoty. Postarejte se, aby vaši nadřízení vypadali chytřejší, než jsou ve skutečnosti, a dotknete se vrcholu moci.";

    return Flexible(
      child: Container(
        width: appWidth * 0.85,
        height: appHeight * 0.60,
        decoration: BoxDecoration(
            color: Color(0xFF4756A7), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 8.0,
          ),
          child: Text(
            temporaryText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              height: 2,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
