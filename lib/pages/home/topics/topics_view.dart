import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timelines/timelines.dart';
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
                                    fontFamily: 'SedanSC',
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
                                          fontFamily: 'SedanSC',
                                        ),
                                      )
                                  ),
                                  GetBuilder<TopicsController>(
                                    id: 'bookmark',
                                    builder: (controller) => Flexible(
                                      flex: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: controller.bookmark == true ? color2 : color4,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: color1.withOpacity(0.1),
                                                  spreadRadius: 5,
                                                  blurRadius: 20,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: InkWell(
                                              child: Center(
                                                child: Icon(
                                                  controller.bookmark == true ? Icons.bookmark : Icons.bookmark_border,
                                                  color: controller.bookmark == true ? color4 : color1,
                                                  size: 20,
                                                ),
                                              ),
                                              onTap: (){
                                                controller.setBookmark();
                                              },
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // IMAGE
                            SizedBox(
                              height: 300,
                              width: Get.width,
                              child: Image.asset(
                                topic.imgPath ?? 'images/wwii.webp',
                                fit: BoxFit.cover,
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
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                  'Fejezetek',
                                  style: TextStyle(
                                    color: color1,
                                    fontSize: 24,
                                    fontFamily: 'SedanSC',
                                  ),
                              )
                                  )
                                ],
                              ),
                            ),
                            if(topic.chapters != null) Column(
                              children: topic.chapters!.map((chapter) => Padding(
                                padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                                child: Stack(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(bottom: 5),
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
                                      child: ListTile(
                                        title: Text(
                                          chapter.title ?? 'no title',
                                          style: const TextStyle(
                                            color: color1,
                                            fontSize: 18,
                                            fontFamily: 'SedanSC',
                                          ),
                                        ),
                                        subtitle: chapter.desc != null ? Text(
                                          chapter.desc!,
                                          style: const TextStyle(
                                            color: color3,
                                            fontSize: 14,
                                            fontFamily: 'RobotoRegular',
                                          ),
                                        ) : null,
                                        trailing: (chapter.progress == 100 || chapter.progress == 0) ? Icon(
                                          LineIcons.checkCircle,
                                          color: chapter.progress == 100 ? color5 : color3.withOpacity(.25),
                                          size: 30,
                                        ) : null,
                                      ),
                                    ),
                                    if(chapter.progress != 100 && chapter.progress != 0) Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 2,
                                        width: (Get.width - 20)  * (chapter.progress ?? 0) / 100,
                                        color: color5
                                      )
                                    ),
                                    if(chapter.progress != 100 && chapter.progress != 0) Positioned(
                                      bottom: 3,
                                      child: SizedBox(
                                        width: chapter.progress! < 20 ? (Get.width - 20)  * 0.2 : ((Get.width - 20)  * (chapter.progress ?? 0) / 100),
                                        child: Text(
                                          '${chapter.progress} %',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: color5,
                                            fontSize: 12,
                                            fontFamily: 'RobotoRegular',
                                          ),
                                        ),
                                      )
                                    ),
                                  ],
                                )
                              )).toList(),
                            ),

                            // TIMELINE
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                        'Idővonal',
                                        style: TextStyle(
                                          color: color1,
                                          fontSize: 24,
                                          fontFamily: 'SedanSC',
                                        ),
                                      )
                                  ),
                                  const SizedBox(width: 5),
                                  Flexible(
                                    flex: 0,
                                    child: Text(
                                      'Koppints az eseményre a részletekhez',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: color3.withOpacity(.5),
                                        fontFamily: 'RobotoRegular',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: Get.height * .4,
                              child: Timeline.tileBuilder(
                                  theme: TimelineThemeData(
                                    color: color2,
                                    connectorTheme: const ConnectorThemeData(
                                      space: 30.0,
                                      thickness: 5.0,
                                    ),
                                  ),
                                  builder: TimelineTileBuilder.fromStyle(

                                    itemCount: topic.events != null ? topic.events!.length : 0,
                                    contentsAlign: ContentsAlign.alternating,
                                    contentsBuilder: (context, index){
                                      Event event = topic.events![index];
                                      return Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: InkWell(
                                          onTap: (){
                                            Get.dialog(
                                              Dialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: color4,
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                  child: ConstrainedBox(
                                                    constraints: BoxConstraints(
                                                      maxHeight: Get.height * .8,
                                                    ),
                                                    child: SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          // TITLE
                                                          Padding(
                                                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    event.title ?? '',
                                                                    textAlign: TextAlign.center,
                                                                    style: const TextStyle(
                                                                      color: color1,
                                                                      fontSize: 22,
                                                                      fontFamily: 'SedanSC',
                                                                      fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // DESC
                                                          Padding(
                                                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    event.description ?? '',
                                                                    textAlign: TextAlign.center,
                                                                    style: TextStyle(
                                                                      color: color1.withOpacity(.5),
                                                                      fontSize: 16,
                                                                      fontFamily: 'SedanSC',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // Calendar
                                                          Padding(
                                                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                                                            child: Row(
                                                              children: [
                                                                const Flexible(
                                                                  flex: 0,
                                                                  child: Padding(
                                                                    padding: EdgeInsets.only(right: 10),
                                                                    child: Icon(
                                                                      LineIcons.calendar,
                                                                      color: color2,
                                                                      size: 30,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    event.date ?? '',
                                                                    textAlign: TextAlign.left,
                                                                    style: const TextStyle(
                                                                      color: color2,
                                                                      fontSize: 16,
                                                                      fontFamily: 'SedanSC',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          // Long text
                                                          Padding(
                                                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                                            child: Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    event.largeText ?? '',
                                                                    textAlign: TextAlign.justify,
                                                                    style: const TextStyle(
                                                                      color: color3,
                                                                      fontSize: 14,
                                                                      fontFamily: 'RobotoRegular',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                event.date ?? '',
                                                textAlign: index % 2 == 0 ? TextAlign.start : TextAlign.end,
                                                style: const TextStyle(
                                                  color: color3,
                                                  fontSize: 16,
                                                  fontFamily: 'SedanSC',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                event.title ?? '',
                                                textAlign: index % 2 == 0 ? TextAlign.start : TextAlign.end,
                                                style: const TextStyle(
                                                  color: color2,
                                                  fontSize: 18,
                                                  fontFamily: 'SedanSC',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                event.description ?? '',
                                                textAlign: index % 2 == 0 ? TextAlign.start : TextAlign.end,
                                                style: const TextStyle(
                                                  color: color3,
                                                  fontSize: 14,
                                                  fontFamily: 'RobotoRegular',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
        );
      },
    );
  }
}
