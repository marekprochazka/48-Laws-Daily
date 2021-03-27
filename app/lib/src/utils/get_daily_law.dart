import 'package:shared_preferences/shared_preferences.dart';

Future<int> getDaiyId() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  int dailyId = _prefs.getInt('dailyId');
  return dailyId;
}
