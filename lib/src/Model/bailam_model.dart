
class Question {
  final String questiontext;
  final List<Answer> answerList;

  Question(this.questiontext, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestion() {
  List<Question> list = [];
  list.add(Question("Ai là vị vua cuối cùng của Việt Nam?", [
    Answer("Vua An Dương Vương", false),
    Answer("Vua Bảo Đại", true),
    Answer("Vua Trưng Vương", false),
    Answer("Vua Lý Nam Đế", false),
  ]));
  list.add(Question("Ai là vị vua đầu tiên của Việt Nam?", [
    Answer("Vua An Dương Vương", false),
    Answer("Vua Bảo Đại", false),
    Answer("Vua Trưng Vương", false),
    Answer("Vua Lý Nam Đế", true),
  ]));
  list.add(Question("An Dương Vương đặt tên nước ta là?", [
    Answer("Vạn Xuân", false),
    Answer("Văn Lang", false),
    Answer("Âu Lạc", true),
    Answer("Đại Việt", false),
  ]));
  list.add(Question("Nước Vạn Xuân do ai thành lập và đặt tên?", [
    Answer("Vua An Dương Vương", false),
    Answer("Vua Bảo Đại", false),
    Answer("Vua Lý Nam Đế", true),
    Answer("Vua Trưng Vương ", false),
  ]));

  return list;
}
