import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/videoPage/videoData.dart';
import 'package:driver_course_app/pages/videoplayerPage/videoplayer.dart';
import 'package:sizer/sizer.dart';

class VideoList extends StatefulWidget {
  static int linkIndex = 0;
  static void changeLinkIndex(index) {
    linkIndex = index;
  }

  static int iindex = 0;
  static void changePageIndex(index) {
    iindex = index;
  }

  VideoList();

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    var currentIdx = VideoList.iindex;
    Map selectedPage = VideoData.videoMapList[currentIdx];

    void changeIndex(index) {
      setState(() {
        currentIdx = index;
      });
    }

    var currentLinkIdx = VideoList.linkIndex;
    var sublink = VideoData.linkList[currentLinkIdx];

    return Scaffold(
      appBar: AppBar(
        title: Text("Dersler",style: TextStyle(color: Colors.white,fontSize: 2.5.h),),
        backgroundColor: Color.fromRGBO(51, 61, 71, 1),
        elevation: 5,
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
        child: ListView.builder(
          itemCount: selectedPage.length,
          itemExtent: 100,
          padding: EdgeInsets.all(1.h),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 10,
                color: Color.fromRGBO(110, 94, 168, 0.9),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "     " + selectedPage[index],
                      style: TextStyle(fontSize: 2.h, color: Colors.white),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 1.1.h),
                      child: Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 3.h,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                VideoData.changeTipId();
                VideoPlayer.videoId = sublink[selectedPage[index]];
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => VideoPlayer())));
              },
            );
          },
        ),
      ),
    );
  }
}
