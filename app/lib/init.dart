import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'services/api_service.dart';
import 'services/database_service.dart';

class MyInit {
  static Future initialize() async {
    await initDatabase();
    await initDailyId();
  }

  static Future initDatabase() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool didStarted = prefs?.getBool("didStarted") ?? false;
    if (!didStarted) {
      final DatabaseService _dbService = DatabaseService();
      await _dbService.initDatabase();
      print("INITIALIZING DATABSE");
      prefs.setBool("didStarted", true);
    }
  }

  static Future initDailyId() async {
    final DateTime now = DateTime.now();
    final DateFormat dateFormat = DateFormat('yyyyMMdd');
    final int dateNowFormatted = int.parse(dateFormat.format(now));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int savedDate = prefs?.getInt('savedDate') ?? 0;
    final ApiService _apiService = ApiService();
    if (dateNowFormatted > savedDate) {
      print("we need to update this");
      print("now: $dateNowFormatted \n old: $savedDate");
      prefs.setInt('savedDate', dateNowFormatted);
      final int dailyId = await _apiService.fetchDailyId();
      prefs.setInt('dailyId', dailyId);
    }
  }
}
