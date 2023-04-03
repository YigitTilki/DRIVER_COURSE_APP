import 'package:flutter/material.dart';
import 'package:driver_course_app/locale_keys_enum.dart';
import 'package:driver_course_app/locale_manager.dart';
import 'package:driver_course_app/pages/loginPage/loginPage.dart';
import 'package:driver_course_app/pages/loginPage/loginPages.dart';

class JsonLoginPageList{
  static Map<String,dynamic> LoginPageList ={
    "case":"logged"
  };
  static  Map<String,dynamic> tempCase={
    "case":"notLogged"
  };
  
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    if(LocaleManager.instance.getIntValue(PreferencesKeys.TEMP) == -1){
      return LoginPage();
    }
    else{
      return FirstPage();
    }
  }
}