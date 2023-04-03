import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/videoPage/videoData.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:sizer/sizer.dart';

class VideoPlayer extends StatefulWidget {
  static String videoId = "";

  VideoPlayer();

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    String id = "";
    id = YoutubePlayer.convertUrlToId(VideoPlayer.videoId)!;

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          controlsVisibleAtStart: true,
          loop: true),
    );

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Color.fromRGBO(110, 94, 168, 1),
        progressColors: ProgressBarColors(
          playedColor: Color.fromRGBO(110, 94, 168, 1),
          handleColor: Color.fromRGBO(110, 94, 168, 1),
        ),
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: Text(
            "Eğitim Videoları",
            style: TextStyle(color: Colors.white, fontSize: 2.5.h),
          ),
          elevation: 5,
          backgroundColor: Color.fromRGBO(51, 61, 71, 1),
        ),
        body: Container(
          width: 105.h,
          height: 105.h,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.none,
                  scale: 0.2.h,
                  opacity: 0.5)),
          child: Column(
            children: [
              player,
              SizedBox(
                height: 3.1.h,
              ),
              Container(
                width: 45.h,
                height: 50.h,
                child: Card(
                  elevation: 5,
                  color: Color.fromRGBO(51, 61, 71, 0.95),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        height: 15.h,
                        width: 40.h,
                        child: Text(
                          VideoData.tips[VideoData.rndTipId],
                          style:
                              TextStyle(fontSize: 3.2.h, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 15.h,
                        child: Image(
                          image:
                              AssetImage("assets/images/naletOlasiSimge.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
