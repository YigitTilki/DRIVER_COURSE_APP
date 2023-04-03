import 'package:flutter/material.dart';
import 'package:driver_course_app/pages/quizPage/assetQuiz/aQquizCategory.dart';
import 'package:driver_course_app/pages/quizPage/constraints.dart';
import 'package:driver_course_app/pages/quizPage/screens/quizCategory.dart';
import 'package:driver_course_app/pages/summaryPage/sum2Page.dart';
import 'package:sizer/sizer.dart';

import 'sumPage.dart';

class SumCategory extends StatelessWidget {
  const SumCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: syh,
      ),
      body: Container(
        width:105.h,
        height: 105.h,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.none,
                scale: 0.2.h,
                opacity: 0.5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => SumPage())));
              },
              child: Container(
                width: 40.h,
                height: 40.h,
                decoration: BoxDecoration(
                    color: mr, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                      child: Text(
                        "Geçmiş Teorik Sınavlar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 25.h,
                      height: 25.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/teorik.png"))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Sum2Page())));
              },
              child: Container(
                width: 40.h,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: mr),
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Text(
                        "Geçmiş Görsel Sınavlar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 4.h,
                            fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Container(
                      width: 25.h,
                      height: 22.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/gorsel.png"))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
