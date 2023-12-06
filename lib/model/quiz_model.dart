class QuestionsModel {
  String id;
  String question;
  List<Option> options;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  QuestionsModel({
    required this.id,
    required this.question,
    required this.options,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
}

class Option {
  String text;
  bool isCorrect;
  String id;

  Option({
    required this.text,
    required this.isCorrect,
    required this.id,
  });
}
