import 'package:app/models/law.dart';
import 'package:app/services/api_service.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  Future<Database> database() async {
    return openDatabase(
      join((await getDatabasesPath()), 'laws.db'),
      onCreate: (db, version) async {
        Batch batch = db.batch();
        batch.execute(
            "CREATE TABLE laws(id INTEGER PRIMARY KEY, title TEXT, content TEXT)");

        ApiService api = ApiService();
        List<Law> laws = await api.fetchLaws();

        laws.forEach((law) => batch.execute(
            "INSERT INTO laws(id, title, content) VALUES(${law.id}, '${law.title}', '${law.content}')"));

        List<dynamic> result = await batch.commit();
      },
      version: 1,
    );
  }

  Future<void> initDatabase() async {
    Database db = await database();
  }

  Future<List<LawTitle>> fetchTitles() async {
    Database _db = await database();
    List<Map<String, dynamic>> lawTitlesMap =
        await _db.rawQuery("SELECT id, title FROM laws");
    List<LawTitle> lawTitlesList = List.generate(
      lawTitlesMap.length,
      (index) => LawTitle(
        id: lawTitlesMap[index]["id"],
        title: lawTitlesMap[index]["title"],
      ),
    );
    return lawTitlesList;
  }
}
