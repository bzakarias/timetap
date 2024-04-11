import 'package:flutter/material.dart';
import 'package:timetap/models/video.dart';
import 'package:timetap/theme/color_theme.dart';
import 'package:video_player/video_player.dart';

class VideoTile extends StatefulWidget {
  const VideoTile({super.key, required this.video});

  final Video video;

  @override
  _VideoTileState createState() => _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  late VideoPlayerController _videoController;
  late Future _initializeVideoPlayer;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.video.path);
    _initializeVideoPlayer = _videoController.initialize();
    _videoController.setLooping(true).then((_) {
      setState(() {});
    });
    _videoController.play();
  }

  @override
  void dispose(){
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color1,
      child: FutureBuilder(
        future: _initializeVideoPlayer,
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return VideoPlayer(
                _videoController
            );
          }
          else {
            return const Center(
              child: CircularProgressIndicator(
                color: color4,
              ),
            );
          }
        },
      ),
    );
  }
}
