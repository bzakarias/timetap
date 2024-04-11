import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/models/quiz.dart';
import 'package:timetap/pages/home/quiz/quiz_controller.dart';
import 'package:timetap/pages/home/quiz/quiz_game/quiz_game_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class QuizGameWidget extends StatelessWidget {
  const QuizGameWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizGameController>(
      init: QuizGameController(),
      builder: (controller){
        final QuizController quizController = Get.find<QuizController>();
        final List<Question> questions = quizController.topics.first.questions!;
        final Question question = questions[controller.questionIndex];
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  // Image
                  Stack(
                    children: [
                      SizedBox(
                        height: Get.height * .4,
                        width: Get.width,
                        child: Image.asset(
                          question.imgPath ?? 'images/wwii.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Container(
                                width: 40,
                                height: 40,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white.withOpacity(.9),
                                  size: 20,
                                ),
                              ),
                              onTap: (){
                                Get.back();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Progress indicator
                  Stack(
                    children: [
                      Container(
                        width: Get.width,
                        height: 5,
                        color: color1.withOpacity(.5),
                      ),
                      Positioned(
                        left: 0,
                        child: Container(
                          width: Get.width * (controller.questionIndex+1) / questions.length,
                          height: 5,
                          color: color1,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${controller.questionIndex+1}. kérdés a ${questions.length}-bõl',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: color1,
                              fontFamily: 'Roboto Regular',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Topic
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      'A második világháború',
                      style: TextStyle(
                        color: color3.withOpacity(.5),
                        fontFamily: 'Roboto Regular',
                        fontSize: 16,
                      ),
                    ),
                  ),

                  // Question
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${controller.questionIndex+1}. ${question.questionText}' ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: color3,
                              fontFamily: 'LatoBold',
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  // Answers
                  Expanded(
                    child: GridView.builder(
                        padding: const EdgeInsets.all(10),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 5,
                        ),
                        itemCount: questions[controller.questionIndex].answers?.length,
                        itemBuilder: (context, index){
                          Answer answer = questions[controller.questionIndex].answers![index];
                          return InkWell(
                            onTap: (){
                              controller.answerQuestion(answer);
                            },
                            child: answerContainer(controller, answer),
                          );
                        }
                    ),
                  ),


                  // Next
                  if(controller.answered) Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                      child: Row(
                        children: [
                          SizedBox(width: Get.width * .66),
                          Expanded(
                            child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: color1,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                    child: Text(
                                      'Következő',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'LatoBold',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: (){
                                  controller.nextQuestion();
                                }
                            ),
                          ),
                        ],
                      )
                  ),

                ],
              ),

              if(controller.end) Container(
                height: Get.height,
                width: Get.width,
                color: Colors.black.withOpacity(.9),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Kitöltotted a kvízt! Pontjaid: ${controller.scores}/${questions.length}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: color4,
                            fontFamily: 'LatoBold',
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: InkWell(
                            onTap: (){
                              controller.clearAll();
                              Get.back();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: color4,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child: Text(
                                  'Close',
                                  style: TextStyle(
                                    color: color4,
                                    fontFamily: 'LatoBold',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget answerContainer(QuizGameController controller, Answer answer){
    if(controller.answered && answer.correct == true){
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: color1,
            ),
            color: color1.withOpacity(.25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    answer.answerText ?? '',
                    style: const TextStyle(
                      color: color1,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const Icon(
                  Icons.check_circle,
                  color: color1,
                  size: 30,
                ),
              ],
            ),
          )
      );
    }
    else if(controller.answered && controller.selectedAnswerId == answer.id && answer.correct == false){
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: color2,
            ),
            color: color2.withOpacity(.25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    answer.answerText ?? '',
                    style: const TextStyle(
                      color: color2,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const Icon(
                  Icons.error,
                  color: color2,
                  size: 30,
                ),
              ],
            ),
          )
      );
    }
    else {
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: controller.answered && answer.correct == true ? color1 : color3.withOpacity(.25),
            ),
            color: controller.answered && answer.correct == true ? color1.withOpacity(.25) : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    answer.answerText ?? '',
                    style: TextStyle(
                      color: controller.answered && answer.correct == true ? color1 : color3,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Icon(
                  controller.answered && answer.correct == true ? Icons.check_circle : Icons.circle_outlined,
                  color: controller.answered && answer.correct == true ? color1 : color3.withOpacity(.25),
                  size: 30,
                ),
              ],
            ),
          )
      );
    }
  }
}
