import 'package:get/get.dart';
import 'package:timetap/models/quiz.dart';

class QuizGameController extends GetxController {
  int questionIndex = 0;
  bool answered = false;
  int selectedAnswerId = -1;
  bool end = false;
  int scores = 0;



  void answerQuestion(Answer answer){
    selectedAnswerId = answer.id!;
    if(answer.correct == true){
      scores++;
    }
    answered = true;
    update();
  }

  void nextQuestion(){
    selectedAnswerId = -1;
    if(questionIndex != 9){
      answered = false;
      questionIndex++;
    } else {
      end = true;
    }
    update();
  }

  void clearAll(){
    questionIndex = 0;
    answered = false;
    end = false;
    scores = 0;
    update();
  }
}