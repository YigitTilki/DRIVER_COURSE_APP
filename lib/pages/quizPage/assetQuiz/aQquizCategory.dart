import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/data/networkQuizList.dart';
import 'package:driver_course_app/pages/quizPage/constraints.dart';
import 'package:driver_course_app/pages/quizPage/screens/homeScreen.dart';
import 'package:sizer/sizer.dart';

import 'assetQuizScreen.dart';

class AqQuizCategoryPage extends StatefulWidget {
  const AqQuizCategoryPage({Key? key}) : super(key: key);

  @override
  State<AqQuizCategoryPage> createState() => _QuizCategoryPageState();
}

class _QuizCategoryPageState extends State<AqQuizCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: syh,
        title: Text(
          "Görsel Sınav Seçim Ekranı",
          style: TextStyle(color: Colors.white, fontSize: 2.5.h),
        ),
      ),
      body: Container(
        width: 105.h,
        height: 105.h,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              opacity: 0.5,
              scale: 0.2.h,
              fit: BoxFit.none,
            )),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(2.h),
              child: GestureDetector(
                onTap: () {
                  quizSelector = index;
                  QuizData.quizID = index;
                  AqHomeScreenState.started = true;
                  print(QuizData.quizID);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => AqHomeScreen())));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  color: Color.fromRGBO(110, 94, 168, 0.9),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Sınav No : ${index + 1}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 2.5.h,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Icon(
                          Icons.article,
                          color: Colors.white,
                          size: 7.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
