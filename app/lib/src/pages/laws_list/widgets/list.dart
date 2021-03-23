import 'package:app/models/law.dart';
import 'package:app/services/database_service.dart';
import 'package:app/src/pages/laws_list/widgets/list_element.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height;
    final appWidth = MediaQuery.of(context).size.width;
    DatabaseService _db_service = DatabaseService();
    return Container(
      child: SizedBox(
        height: appHeight * 0.65,
        width: appWidth * 0.80,
        child: FutureBuilder(
          future: _db_service.fetchTitles(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              print(snapshot);
              print(snapshot.data);
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListElement(
                      law_id: snapshot.data[index].id,
                      law_title: snapshot.data[index].title,
                    );
                  });
            } else {
              return Text("Loading...");
            }
          },
        ),
      ),
    );
  }
}
