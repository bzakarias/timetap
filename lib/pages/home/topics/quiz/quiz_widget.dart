import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/models/quiz.dart';
import 'package:timetap/pages/home/topics/quiz/quiz_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({super.key, required this.topic});

  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      init: QuizController(),
      builder: (controller){
        return InkWell(
          onTap: topic.questions != null ? (){
            if(topic.questions!.isNotEmpty){}
            Get.toNamed(
              Routes.QUIZ_GAME,
              arguments: topic,
            );
          } : null,
          child: Container(
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Center(
                child: Text(
                  'Kvíz indítása',
                  style: TextStyle(
                    color: color4,
                    fontSize: 16,
                    fontFamily: 'RobotoRegular',
                    fontWeight: FontWeight.bold,
                  ),
                )
              )
            ),
          ),
        );
      }
    );
  }
}
