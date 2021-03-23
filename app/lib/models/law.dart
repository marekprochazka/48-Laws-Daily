class Law {
  final int id;
  final String title;
  final String content;

  Law({this.id, this.title, this.content});

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
