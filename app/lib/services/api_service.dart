import 'dart:convert';

import 'package:app/models/law.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ApiService {
  Future<List<Law>> fetchLaws() async {
    final Response response = await get(
        Uri.https('lawsofpower.pythonanywhere.com', 'api/laws-list'),
        headers: {'Content-Type': 'application/json', 'charset': 'utf-8'});
    if (response.statusCode == 200) {
      List<dynamic> responseDecoded =
          json.decode(utf8.decode(response.bodyBytes));
      return List.generate(responseDecoded.length,
          (index) => Law.fromJson(json: responseDecoded[index]));
    } else {
      throw Exception('Failed to load laws');
    }
  }

  Future<int> fetchDailyId() async {
    final Response response = await get(
        Uri.https('lawsofpower.pythonanywhere.com', 'api/daily-id'),
        headers: {'Content-Type': 'application/json', 'charset': 'utf-8'});
    if (response.statusCode == 200) {
      final String data = response.body;
      final Map<String, dynamic> dataJSON = json.decode(data);
      return dataJSON["id"];
    } else
      return 1;
  }
}
