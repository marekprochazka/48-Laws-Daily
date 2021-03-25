class Law {
  final int id;
  final String title;
  final String content;

  Law({this.id, this.title, this.content});

  Law.fromJson({Map json})
      : this.id = json["id"] as int,
        this.title = json["title"] as String,
        this.content = json["content"] as String;

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "content": content,
    };
  }
}

class LawTitle {
  final int id;
  final String title;

  LawTitle({this.id, this.title});
}
