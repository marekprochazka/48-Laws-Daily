import 'package:app/models/law.dart';
import 'package:app/services/database_service.dart';
import 'package:app/src/pages/laws_list/widgets/list_element.dart';
import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appHeight = MediaQuery.of(context).size.height;
    final appWidth = MediaQuery.of(context).size.width;
    DatabaseService _dbService = DatabaseService();
    return Container(
      child: SizedBox(
        height: appHeight * 0.65,
        width: appWidth * 0.80,
        child: FutureBuilder(
          future: _dbService.fetchTitles(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListElement(
                      lawId: snapshot.data[index].id,
                      lawTitle: snapshot.data[index].title,
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
