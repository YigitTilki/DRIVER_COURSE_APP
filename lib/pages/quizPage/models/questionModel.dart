class Question {
  final String id;
  final String title;
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.options,
    required this.title
  });

  @override
  String toString() {
    // TODO: implement toString
    return "Question(id:$id, title:$title, options: $options)";
  }
}
