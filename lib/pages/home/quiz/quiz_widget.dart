import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/models/quiz.dart';
import 'package:timetap/pages/home/quiz/quiz_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuizController>(
      init: QuizController(),
      builder: (controller){
        return GridView.builder(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemCount: controller.topics.length,
            itemBuilder: (context, index){
              Topic topic = controller.topics[index];
              return InkWell(
                onTap: (){
                  Get.toNamed(Routes.QUIZ_GAME);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 125,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              topic.imgPath ?? 'images/wwii.webp',
                              fit: BoxFit.cover,
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  topic.title ?? 'no title',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'LatoBold',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
        );
      }
    );
  }
}
