class Topic {
  Topic({
    this.id,
    this.title,
    this.questions,
    this.chapters,
    this.imgPath
  });

  final int? id;
  final String? title;
  final List<Question>? questions;
  final List<Chapter>? chapters;
  final String? imgPath;
}

class Chapter {
  Chapter({
    this.id,
    this.title
});
  final int? id;
  final String? title;
}

class Question {
  Question({
    this.id,
    this.questionText,
    this.answers,
    this.imgPath
  });
  final int? id;
  final String? questionText;
  final List<Answer>? answers;
  final String? imgPath;
}

class Answer {
  Answer({
    this.id,
    this.answerText,
    this.correct,
  });
  final int? id;
  final String? answerText;
  final bool? correct;
}