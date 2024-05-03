class Topic {
  Topic({
    this.id,
    this.title,
    this.questions,
    this.chapters,
    this.imgPath,
    this.events
  });

  final int? id;
  final String? title;
  final List<Question>? questions;
  final List<Chapter>? chapters;
  final String? imgPath;
  List<Event>? events = [];
}

class Event {
  Event({
    this.id,
    this.title,
    this.date,
    this.description,
    this.largeText,
  });

  final int? id;
  final String? title;
  final String? date;
  final String? description;
  final String? largeText;
}

class Chapter {
  Chapter({
    this.id,
    this.title,
    this.desc,
    this.progress = 0
});
  final int? id;
  final String? title;
  final String? desc;
  int? progress;
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