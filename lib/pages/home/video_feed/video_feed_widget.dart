import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:line_icons/line_icons.dart';
import 'package:timetap/models/video.dart';
import 'package:timetap/pages/home/video_feed/video_feed_controller.dart';
import 'package:timetap/pages/home/video_feed/video_tile/video_tile.dart';
import 'package:timetap/theme/color_theme.dart';

class VideoFeedWidget extends StatelessWidget {
  const VideoFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {

    Shadow shadow = const Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 10,
      color: Colors.black,
    );

    return GetBuilder<VideoFeedController>(
      init: VideoFeedController(),
      builder: (controller){
        Video currentVideo = controller.videos[controller.index % controller.videos.length];
        return InkWell(
          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: (int page){
                  controller.nextVideo();
                },
                scrollDirection: Axis.vertical,
                itemCount: controller.itemCount,
                itemBuilder: (context, index){
                  return VideoTile(
                    video: currentVideo,
                  );
                },
              ),

              // Title
              Positioned(
                left: 30,
                top: 60,
                child: Text(
                  'VideoFeed',
                  style: TextStyle(
                    color: color4,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LatoBold',
                    shadows: [
                      shadow,
                    ],
                  ),
                ),
              ),

              // Sidebar
              Positioned(
                  bottom: Get.height * .2,
                  right: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () => controller.like(currentVideo),
                            child: getShadowedIcon(
                              iconData: LineIcons.heart,
                              iconDataColored: LineIcons.heartAlt,
                              colored: controller.liked,
                            ),
                          ),
                          Text(
                            '${currentVideo.likes}',
                            style: TextStyle(
                              color: color4,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'OpenSansSemiBold',
                              shadows: [
                                shadow,
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            getShadowedIcon(
                                iconData: LineIcons.comment
                            ),
                            Text(
                              '${currentVideo.comments}',
                              style: TextStyle(
                                color: color4,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'OpenSansSemiBold',
                                shadows: [
                                  shadow,
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: (){
                          Get.bottomSheet(
                            Container(
                              decoration: const BoxDecoration(
                                color: color4,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Kommentek',
                                    style: TextStyle(
                                      color: color1,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'LatoBold',
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: controller.comments.length,
                                      itemBuilder: (context, index){
                                        return ListTile(
                                          trailing: CircleAvatar(
                                            child: ClipOval(
                                              child: Image.asset(
                                                'images/avatar0${index+1}.webp',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            controller.comments[index].user!,
                                            style: const TextStyle(
                                              color: color1,
                                              fontSize: 16,
                                              fontFamily: 'LatoBold',
                                            ),
                                          ),
                                          subtitle: Text(
                                            controller.comments[index].comment!,
                                            style: const TextStyle(
                                              color: color3,
                                              fontSize: 12,
                                              fontFamily: 'RobotoRegular',
                                            ),
                                          )
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      getShadowedIcon(
                        iconData: LineIcons.download,
                      ),
                    ],
                  )
              ),

              // Video details
              Positioned(
                bottom: Get.height * .125,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentVideo.title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: color4,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'LatoBold',
                        shadows: [
                          shadow
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Get.width * .6,
                      child: Text(
                        currentVideo.description,
                        textAlign: TextAlign.left,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: color4,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'RobotoRegular',
                          shadows: [
                            shadow
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onDoubleTap: (){
            controller.like(currentVideo);
          },
        );
      }
    );
  }

  Widget getShadowedIcon({required IconData iconData, IconData? iconDataColored, bool colored = false}){
    return Stack(
      children: <Widget>[
        Positioned(
          left: 2.0,
          top: 2.0,
          child: Icon(
            colored ? iconDataColored : iconData,
            color: Colors.black.withOpacity(.5),
            size: 30,
          ),
        ),
        Icon(
          colored ? iconDataColored : iconData,
          color: colored ? color2 : color4,
          size: 30,
        ),
      ],
    );
  }
}
