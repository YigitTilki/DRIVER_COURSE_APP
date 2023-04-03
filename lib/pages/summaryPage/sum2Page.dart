import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/quizPage/constraints.dart';
import 'package:driver_course_app/pages/summaryPage/icon.dart';
import 'package:sizer/sizer.dart';

import '../data/jsonQuizlist.dart';

class Sum2Page extends StatelessWidget {
  const Sum2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text(
                "Başarılı:",
                style: TextStyle(fontSize: 1.35.h),
              ),
              Icon(
                Icons.check,
                size: 2.h,
                color: Colors.greenAccent,
              ),
              SizedBox(
                width: 1.h,
              ),
              Text(
                "Başarısız:",
                style: TextStyle(fontSize: 1.35.h),
              ),
              Icon(
                Icons.error,
                size: 2.h,
                color: Colors.redAccent,
              ),
              SizedBox(
                width: 1.h,
              ),
              Text(
                "Çözülmedi:",
                style: TextStyle(fontSize: 1.35.h),
              ),
              Icon(
                Icons.question_mark_rounded,
                size: 2.h,
                color: Colors.white,
              ),
              SizedBox(
                width: 1.h,
              )
            ],
          )
        ],
        title: Text(
          "Geçmiş",
          style: TextStyle(fontSize: 2.5.h, color: Colors.white),
        ),
        backgroundColor: syh,
      ),
      body: Container(
        width: 105.h,
        height: 105.h,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.png",
                ),
                fit: BoxFit.none,
                scale: 0.2.h,
                opacity: 0.5)),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(1.h),
              child: Container(
                width: 50.h,
                height: 15.h,
                child: Card(
                  color: mr,
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 1.h,
                      ),
                      Text(
                        "Sınav No ${index + 1}-)  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 2.h,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Doğru Sayısı:" +
                            JsonQuizList
                                .tempImageQuizObject[(index + 1).toString()]
                                    ["true"]
                                .toString(),
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 1.5.h,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        "Yanlış Sayısı:" +
                            JsonQuizList
                                .tempImageQuizObject[(index + 1).toString()]
                                    ["false"]
                                .toString(),
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 1.5.h,
                            fontStyle: FontStyle.italic),
                      ),
                      iQcreateIcon(index),
                      SizedBox(
                        width: 1.h,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
