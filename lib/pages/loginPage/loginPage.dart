import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/locale_manager.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/homepage/homePage.dart';
import 'package:driver_course_app/pages/loginPage/loginData.dart';
import 'package:driver_course_app/pages/loginPage/loginPageIndex.dart';

import '../../locale_keys_enum.dart';
import '../data/jsonQuizlist.dart';
import '../quizPage/constraints.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<bool> checkInternet() async {
    final cnnctResult = await (Connectivity().checkConnectivity());
    if (cnnctResult == ConnectivityResult.mobile) {
      return true;
    } else if (cnnctResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  TextEditingController nameCtrl = new TextEditingController();

  TextEditingController surnameCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(51, 61, 71, 1),
          height: 104.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "İnci Deniz Sürücü Kursu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 5.h,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: 35.h,
                  height: 1.3.h,
                  child: Card(
                    color: Color.fromRGBO(110, 94, 168, 1),
                    elevation: 3,
                  )),
              Container(
                width: 34.h,
                height: 35.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/login.png"),
                )),
              ),
              SizedBox(
                height: 3.5.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    "Hoşgeldiniz!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 2.5.h,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(3.5.h, 1.5.h, 3.5.h, 0),
                child: TextField(
                  maxLength: 15,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.create_rounded,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(110, 94, 168, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(110, 94, 168, 1),
                          )),
                      hintText: "Lütfen adınızı girin...",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5.h,
                          fontStyle: FontStyle.italic)),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(3.5.h, 3.5.h, 3.5.h, 1.7.h),
                child: TextField(
                  maxLength: 15,
                  controller: surnameCtrl,
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.create_rounded, color: Colors.white),
                      filled: true,
                      fillColor: Color.fromRGBO(110, 94, 168, 1),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(110, 94, 168, 1),
                          )),
                      hintText: "Lütfen soyadınızı girin...",
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5.h,
                          fontStyle: FontStyle.italic)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(110, 94, 168, 1)),
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(fontSize: 1.7.h),
                ),
                onPressed: () async {
                  await LocaleManager.instance.setIntValue(PreferencesKeys.TOTAL_COMPLETED_QUIZ,0);
                  await LocaleManager.instance.setStringValue(PreferencesKeys.USER, nameCtrl.text.toUpperCase()+" "+surnameCtrl.text.toUpperCase());
                 await LocaleManager.instance.setIntValue(PreferencesKeys.TEMP,0);
                  
                 await LocaleManager.instance.setIntValue(PreferencesKeys.TRUE_ANSWER,0);
                 await LocaleManager.instance.setIntValue(PreferencesKeys.FALSE_ANSWER,0);
                 await LocaleManager.instance.setIntValue(PreferencesKeys.TOTAL_QUESTION,0);
                 await LocaleManager.instance.setStringValue(PreferencesKeys.IMAGE_QUIZ_LIST,JsonQuizList.jsonImageQuizObject);
                 await LocaleManager.instance.setStringValue(PreferencesKeys.QUIZ_LIST,JsonQuizList.jsonQuizObject);

                  if (await checkInternet()) {
                    Navigator.of(context).pop();
                    LoginData.currentLoginPage = 0;
                    UserData.changeName(nameCtrl.text + " " + surnameCtrl.text);

                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => HomePage())));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: mr,
                            content: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Text(
                                "İnternete Bağlı Değilsiniz !",
                                style: TextStyle(
                                    fontSize: 3.h, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        });
                  }
                },
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
