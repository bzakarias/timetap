import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:timetap/models/quiz.dart';
import 'package:timetap/models/video.dart';

class VideoFeedController extends GetxController {
  int itemCount = 100;
  bool liked = false;
  int index = 1;
  int count = 0;

  final List<Video> videos = [
    Video(
      id: 1,
      title: 'The Battle of Stalingrad',
      description: 'The Battle of Stalingrad was a major battle on the Eastern Front of World War II in which...',
      likes: 1214,
      comments: 425,
      path: 'videos/video_01.mp4',
    ),
    Video(
      id: 2,
      title: 'The Crusader Knights',
      description: 'The Crusader Knights were a group of knights who fought in the Crusades...',
      likes: 214,
      comments: 25,
      path: 'videos/video_02.mp4',
    ),
    Video(
      id: 3,
      title: 'The Battle of Hastings',
      description: 'The Battle of Hastings was a major battle in the Norman Conquest of England...',
      likes: 314,
      comments: 125,
      path: 'videos/video_03.mp4',
    ),
    Video(
      id: 4,
      title: 'The Battle of Agincourt',
      description: 'The Battle of Agincourt was a major battle in the Hundred Years War...',
      likes: 414,
      comments: 225,
      path: 'videos/video_04.mp4',
    ),
    Video(
      id: 5,
      title: 'The Battle of Waterloo',
      description: 'The Battle of Waterloo was a major battle in the Napoleonic Wars...',
      likes: 514,
      comments: 325,
      path: 'videos/video_05.mp4',
    ),
  ];

  final List<Comment> comments = [
    Comment(
      id: 1,
      comment: "Valóban lenyűgöző látni, hogy a technológia milyen gyorsan fejlődött az ipari forradalom óta! 😲 Tudtátok, hogy az első gőzmozdonyok milyen lassan haladtak a mai vonatokhoz képest?",
      user: 'steamengine2005'
    ),
    Comment(
      id: 2,
      comment: "Ez a videó nagyon érdekes volt! 😊 Nagyon tetszett, ahogy bemutattad a különböző korszakokat és azokat a technológiákat, amelyeket használtak.",
      user: 'historybuff123'
    ),
    Comment(
      id: 3,
      comment: 'valid amugy, nemetek nagyot mentek',
      user: 'thereal_tomi',
    )
  ];

  void like(Video video){
    liked = !liked;
    video.likes += liked ? 1 : -1;
    update();
  }

  void nextVideo(){
    liked = false;
    index++;
    itemCount++;
    update();
  }

}