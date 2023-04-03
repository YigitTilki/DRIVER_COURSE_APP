import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:driver_course_app/locale_keys_enum.dart';
import 'package:driver_course_app/pages/data/jsonQuizlist.dart';

import 'package:driver_course_app/pages/loginPage/loginPageIndex.dart';
import 'package:driver_course_app/pages/quizPage/assetQuiz/assetQuizScreen.dart';
import 'package:driver_course_app/pages/quizPage/screens/homeScreen.dart';
import 'package:driver_course_app/pages/quizPage/screens/quizForm.dart';
import 'package:driver_course_app/pages/videoPage/catalogPage.dart';
import 'package:driver_course_app/pages/videoPage/videoList.dart';
import 'package:driver_course_app/pages/videoplayerPage/videoplayer.dart';
import 'package:driver_course_app/pages/webview/webview.dart';

import 'locale_manager.dart';
import 'pages/homepage/homePage.dart';
import 'pages/loginPage/loginPage.dart';
import 'pages/pdfPage/bookPage.dart';
import 'pages/quizPage/screens/quizCategory.dart';
import 'pages/summaryPage/sPage.dart';
import 'pages/summaryPage/sumPage.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleManager.prefrencesInit();

  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromRGBO(51, 61, 71, 1),
          )),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromRGBO(51, 61, 71, 1),
          )),
        )),
        home: MyApp());
  }));
}
