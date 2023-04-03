import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/functions/functions.dart';
import 'package:driver_course_app/pages/videoPage/videoList.dart';
import 'package:sizer/sizer.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eğitim Videoları",style: TextStyle(color: Colors.white,fontSize: 2.5.h),),
        backgroundColor: Color.fromRGBO(51, 61, 71, 1),
        elevation: 5,
      ),
      body: Container(
        width: 105.h,
        height: 105.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  scale: 0.2.h,
                  fit: BoxFit.none,
                  opacity: 0.5),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.all(1.h),
                child: GestureDetector(
                  child: CreateCard(50.h, 20.h, "Trafik ve Çevre",
                      "assets/images/traffic.png", 8.h, 8.h, 4.h),
                  onTap: () {
                    VideoList.changePageIndex(0);
                    VideoList.changeLinkIndex(0);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return VideoList();
                    })));
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(1.h),
                child: GestureDetector(
                  onTap: () {
                    VideoList.changePageIndex(1);
                    VideoList.changeLinkIndex(1);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return VideoList();
                    })));
                  },
                  child: CreateCard(50.h, 20.h, "Araç Tekniği",
                      "assets/images/carTech.png", 8.h, 8.h, 4.h),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(1.h),
                child: GestureDetector(
                  child: CreateCard(50.h, 20.h, "İlk Yardım",
                      "assets/images/firstaid.png", 8.h, 8.h, 4.h),
                  onTap: () {
                    VideoList.changePageIndex(2);
                    VideoList.changeLinkIndex(2);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return VideoList();
                    })));
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(1.h),
                child: GestureDetector(
                  child: CreateCard(50.h, 20.h, "Trafik Etiği",
                      "assets/images/ethics.png", 8.h, 8.h, 4.h),
                  onTap: () {
                    VideoList.changePageIndex(3);
                    VideoList.changeLinkIndex(3);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return VideoList();
                    })));
                  },
                ),
              ),
            ],
          )),
    );
  }
}
