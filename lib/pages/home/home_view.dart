import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/core/routes.dart';
import 'package:timetap/pages/home/home_controller.dart';
import 'package:timetap/pages/home/profile/profile_widget.dart';
import 'package:timetap/pages/home/quiz/quiz_widget.dart';
import 'package:timetap/pages/home/start_page/start_page_widget.dart';
import 'package:timetap/pages/home/video_feed/video_feed_widget.dart';
import 'package:timetap/theme/color_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller){
        Widget bottomBar = Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: color1.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: color1,
              // borderRadius: const BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   topRight: Radius.circular(20),
              // ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Start page
                  getBottomNavBarItem(
                      controller: controller,
                      currentPage: 'start_page',
                      iconData: LineIcons.home
                  ),
                  getBottomNavBarItem(
                      controller: controller,
                      currentPage: 'quiz',
                      iconData: LineIcons.question
                  ),
                  getBottomNavBarItem(
                      controller: controller,
                      currentPage: 'video',
                      iconData: LineIcons.video
                  ),
                  getBottomNavBarItem(
                      controller: controller,
                      currentPage: 'profile',
                      iconData: LineIcons.user
                  ),
                ],
              ),
            ),
          ),
        );
        return Scaffold(
          appBar: getAppBar(currentPage: controller.currentPage),
          backgroundColor: color4,
          body: Stack(
            children: [
              getContent(currentPage: controller.currentPage),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: bottomBar,
              ),
            ],
          ),
          // bottomNavigationBar: ['quiz', 'video'].contains(controller.currentPage) ? null : bottomBar,
        );
      }
    );
  }

  Widget getContent({required String currentPage}){
    if(currentPage == 'start_page'){
      return StartPageWidget();
    }
    else if(currentPage == 'quiz'){
      return QuizWidget();
    }
    else if(currentPage == 'video'){
      return VideoFeedWidget();
    }
    else if(currentPage == 'profile'){
      return ProfileWidget();
    }
    else {
      return Container();
    }
  }

  AppBar? getAppBar({required String currentPage}){
    if(currentPage == 'start_page'){
      return AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
                      LineIcons.calendar,
                      color: color1,
                      size: 25,
                    ),
                  )
              ),
            ),
          ),
        ],
      );
    }
    else if(currentPage == 'profile'){
      return AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: Stack(
                children: [
                  Container(
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
                          LineIcons.bell,
                          color: color1,
                          size: 25,
                        ),
                      )
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color2,
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
                      LineIcons.cog,
                      color: color1,
                      size: 25,
                    ),
                  )
              ),
            ),
          ),
        ],
      );
    }
    else if(currentPage == 'quiz'){
      return AppBar(
        backgroundColor: color4,
        title: const Text(
          'Témák',
          style: TextStyle(
            color: color1,
            fontSize: 26,
            fontFamily: 'LatoBold',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
        ],
      );
    }
    return null;

  }

  Widget getBottomNavBarItem({required HomeController controller, required String currentPage, required IconData iconData, VoidCallback? onTap}){
    if(controller.currentPage == currentPage){
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(3),
              ),
              width: 15,
              height: 5,
            ),
          ),
           Icon(
              iconData,
              color: color4
          )
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(3),
              ),
              width: 15,
              height: 5,
            ),
          ),
          InkWell(
            child: Icon(
              iconData,
              color: color4.withOpacity(0.25),
            ),
            onTap: (){
              controller.changePage(currentPage);
            },
          ),
        ],
      );
    }
  }
}
