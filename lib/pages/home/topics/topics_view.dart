import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/models/quiz.dart';
import 'package:timetap/pages/home/topics/quiz/quiz_widget.dart';
import 'package:timetap/pages/home/topics/topics_controller.dart';
import 'package:timetap/theme/color_theme.dart';

class TopicsView extends StatelessWidget {
  const TopicsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TopicsController>(
      init: TopicsController(),
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
                onTap: (){
                  Get.dialog(
                    Dialog.fullscreen(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // TITLE
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: InkWell(
                                        onTap: Get.back,
                                        child: const Icon(
                                          LineIcons.arrowLeft,
                                          color: color1,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                        topic.title ?? 'no title',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: color1,
                                          fontSize: 24,
                                          fontFamily: 'LatoBold',
                                        ),
                                      )
                                  ),
                                  Flexible(
                                    flex: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: InkWell(
                                        child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: color4,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: color1.withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 20,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                LineIcons.filter,
                                                color: color1,
                                                size: 25,
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // QUIZ
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Wrap(
                                children: [
                                  QuizWidget(topic: topic),
                                ],
                              ),
                            ),
                            // CHAPTERS
                            const Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                  'Fejezetek',
                                  style: const TextStyle(
                                    color: color1,
                                    fontSize: 24,
                                    fontFamily: 'LatoBold',
                                  ),
                              )
                                  )
                                ],
                              ),
                            ),
                            if(topic.chapters != null) Column(
                              children: topic.chapters!.map((chapter) => Padding(
                                padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: color4,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: color1.withOpacity(0.1),
                                                  spreadRadius: 2,
                                                  blurRadius: 10,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                              child: Text(
                                                chapter.title ?? 'no title',
                                                style: const TextStyle(
                                                  color: color1,
                                                  fontSize: 18,
                                                  fontFamily: 'LatoBold',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )
                                        )
                                    )
                                  ],
                                )
                              )).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
              return QuizWidget(topic: topic);
            }
        );
      },
    );
  }
}
