import 'package:get/get.dart';

class TestGraduationController extends GetxController {
  int pageIndex = 0;

  String? answerA;
  String? answerB;
  String? answerC;
  String? answerD;

  void setAnswerA(String value) {
    answerA = value;
    update();
  }

  void setAnswerB(String value) {
    answerB = value;
    update();
  }

  void setAnswerC(String value) {
    answerC = value;
    update();
  }

  void setAnswerD(String value) {
    answerD = value;
    update();
  }
}