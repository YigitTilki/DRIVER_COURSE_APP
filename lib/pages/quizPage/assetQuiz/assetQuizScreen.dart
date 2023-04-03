import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/data/dataBaseList.dart';
import 'package:driver_course_app/pages/data/networkQuizList.dart';
import 'package:driver_course_app/pages/quizPage/screens/quizCategory.dart';
import '../../../locale_keys_enum.dart';
import '../../../locale_manager.dart';
import '../../data/jsonQuizlist.dart';
import '../constraints.dart';
import '../models/db_connect.dart';
import '../models/questionModel.dart';
import '../widgets/nextButton.dart';
import '../widgets/optionCard.dart';
import '../widgets/questionWidget.dart';
import '../widgets/resultBox.dart';
import 'aQoptionCard.dart';
import 'aQquizCategory.dart';
import 'aQresultBox.dart';
import 'package:sizer/sizer.dart';

class AqHomeScreen extends StatefulWidget {
  @override
  State<AqHomeScreen> createState() => AqHomeScreenState();
}

class AqHomeScreenState extends State<AqHomeScreen> {
  var db = iDataBaseList[QuizData.quizID];
  late Future extractedData;
  static bool? started;
  List<String> questionList = quizList[quizSelector];

  //late Future extractedData = DBconnect.fetchQuestions();
  //late Future extractedData = dataBaseList[0].fetchQuestions();

  Future<List<Question>> getData() async {
    return await db.fetchQuestions();
  }

  @override
  void initState() {
    extractedData = getData();
    super.initState();
  }

  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 15);

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 15));
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  bool isPressed = false;
  int quizIndex = QuizData.quizID;
  //int index = QuizData.quizID;
  int index = 0;
  int score = 0;
  int iCQ = 0;
  bool isAlreadySelected = false;
  String result = "";
  void nextQuestion(int questionLength) {
    if (index == questionLength - 2) {
      ButtonData.buttonString = "Sınavı Bitir";
    }
    if (index == questionLength - 1 ||
        myDuration == Duration(minutes: 0, seconds: 0)) {
      if (score < questionLength / 2) {
        result = "failed";
      } else {
        result = "passed";
      }
      QuizData.iQuizList[quizIndex] =
          QuizData(score, questionLength - score, result);
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: ((context) => AqResultBox(
                result: score,
                questionLength: questionLength,
                onPressed: startOver,
              )));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Lütfen bir şık seçin"),
          behavior: SnackBarBehavior.floating,
          backgroundColor: syh,
          duration: Duration(seconds: 1),
          width: 300,
        ));
      }
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      } else {
        iCQ++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    if (JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
            ["result"] ==
        false) {
      int totalCounter =
          LocaleManager.instance.getIntValue(PreferencesKeys.TOTAL_QUESTION);
      LocaleManager.instance.setIntValue(
          PreferencesKeys.TOTAL_QUESTION, totalCounter + score + iCQ);

      int falseCounter =
          LocaleManager.instance.getIntValue(PreferencesKeys.FALSE_ANSWER);
      LocaleManager.instance
          .setIntValue(PreferencesKeys.FALSE_ANSWER, falseCounter + iCQ);

      int trueCounter =
          LocaleManager.instance.getIntValue(PreferencesKeys.TRUE_ANSWER);
      LocaleManager.instance
          .setIntValue(PreferencesKeys.TRUE_ANSWER, score + trueCounter);

      JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
          ["result"] = true;
      JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
          ["true"] = score;
      JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
          ["false"] = iCQ;
      JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
          ["case"] = "solved";

      LocaleManager.instance.setStringValue(PreferencesKeys.IMAGE_QUIZ_LIST,
          jsonEncode(JsonQuizList.tempImageQuizObject));

      if (score * 6.1 > 70) {
        int quizCounter = LocaleManager.instance
            .getIntValue(PreferencesKeys.TOTAL_COMPLETED_QUIZ) +1;
        LocaleManager.instance
            .setIntValue(PreferencesKeys.TOTAL_COMPLETED_QUIZ, quizCounter + 1);
      }

      JsonQuizList.tempImageQuizObject[(QuizData.quizID + 1).toString()]
          ["result"] = true;
      LocaleManager.instance.setStringValue(
          PreferencesKeys.IMAGE_QUIZ_LIST, jsonEncode(JsonQuizList.tempImageQuizObject));
    }
    setState(() {
      ButtonData.buttonString = "Sonraki Soru";
      //index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;

      //data
    });
    stopTimer();
    resetTimer();
    started = false;
    Navigator.of(context).pop();
    Navigator.pop(context);
    
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: syh,
            title: new Text(
              'Emin misiniz?',
              style: TextStyle(color: Colors.white),
            ),
            content: new Text(
              'Sınavdan ayrılmak üzeresiniz',
              style: TextStyle(color: Colors.white),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(primary: mr),
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('İptal'),
              ),
              TextButton(
                style: TextButton.styleFrom(primary: mr),
                onPressed: () {
                  stopTimer();
                  resetTimer();
                  started = false;
                  Navigator.of(context).pop(true);
                },
                child: new Text('Onayla'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    if (started!) {
      startTimer();
      started = false;
    }
    ;
    return FutureBuilder(
      future: extractedData as Future<List<Question>>,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;

            return WillPopScope(
              onWillPop: _onWillPop,
              child: Scaffold(
                backgroundColor: background,
                appBar: AppBar(
                  title: Text("E - Ehliyet Sınavı",
                      style: TextStyle(color: Colors.white, fontSize: 2.5.h)),
                  backgroundColor: syh,
                  actions: [
                    Row(
                      children: [
                        Text(
                          "$minutes:$seconds",
                          style: TextStyle(fontSize: 1.8.h),
                        ),
                        SizedBox(
                          width: 1.h,
                        ),
                        Icon(
                          Icons.timelapse,
                          color: mr,
                          size: 3.h,
                        ),
                        SizedBox(
                          width: 1.h,
                        )
                      ],
                    )
                  ],
                ),
                body: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/images/background.png"),
                          fit: BoxFit.none,
                          scale: 0.2.h,
                          opacity: 0.5)),
                  width: 105.h,
                  height: 105.h,
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: mr,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(questionList[index]),
                                fit: BoxFit.none,
                                scale: 0.3.h)),
                        alignment: Alignment.center,
                        width: 60.h,
                        height: 30.h,
                      ),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      for (int i = 0;
                          i < extractedData[index].options.length;
                          i++)
                        GestureDetector(
                          onTap: () {
                            checkAnswerAndUpdate(extractedData[index]
                                .options
                                .values
                                .toList()[i]);
                          },
                          child: AqOptionCard(
                            option:
                                extractedData[index].options.keys.toList()[i],
                            color: isPressed
                                ? extractedData[index]
                                            .options
                                            .values
                                            .toList()[i] ==
                                        true
                                    ? Colors.greenAccent
                                    : Colors.redAccent
                                : syh,
                          ),
                        ),
                      SizedBox(
                        height: 6.h,
                      )
                    ],
                  ),
                ),
                floatingActionButton: GestureDetector(
                  onTap: (() => nextQuestion(extractedData.length)),
                  child: Padding(
                    padding: EdgeInsets.all(0.5.h),
                    child: NextButton(),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
        return Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

List<Widget> screenList = [
  Container(),
];
