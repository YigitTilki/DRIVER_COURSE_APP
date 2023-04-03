import 'dart:convert';

import 'package:driver_course_app/locale_keys_enum.dart';
import 'package:driver_course_app/locale_manager.dart';

class JsonQuizList {
  static Map<String, dynamic> jsonQuizList = {
    "1": {"true": 0, "false": 0, "result": false},
    "2": {"true": 0, "false": 0, "result": false},
    "3": {"true": 0, "false": 0, "result": false},
    "4": {"true": 0, "false": 0, "result": false},
    "5": {"true": 0, "false": 0, "result": false},
    "6": {"true": 0, "false": 0, "result": false},
    "7": {"true": 0, "false": 0, "result": false},
    "8": {"true": 0, "false": 0, "result": false},
    "9": {"true": 0, "false": 0, "result": false},
    "10": {"true": 0, "false": 0, "result": false},
    "11": {"true": 0, "false": 0, "result": false},
    "12": {"true": 0, "false": 0, "result": false},
    "13": {"true": 0, "false": 0, "result": false},
    "14": {"true": 0, "false": 0, "result": false},
    "15": {"true": 0, "false": 0, "result": false},
    "16": {"true": 0, "false": 0, "result": false},
    "17": {"true": 0, "false": 0, "result": false},
    "18": {"true": 0, "false": 0, "result": false},
    "19": {"true": 0, "false": 0, "result": false},
    "20": {"true": 0, "false": 0, "result": false},
  };

  static String jsonQuizObject = jsonEncode(jsonQuizList);
  static var tempQuizObject = jsonDecode(LocaleManager.instance.getStringValue(PreferencesKeys.QUIZ_LIST));

  static Map<String, dynamic> jsonImageQuizList = {
    "1": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "2": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "3": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "4": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "5": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "6": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "7": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "8": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "9": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
    "10": {"true": 0, "false": 0, "result": false, "case": "notSolved"},
  };
  static String jsonImageQuizObject = jsonEncode(jsonImageQuizList);
  static var tempImageQuizObject = jsonDecode(
      LocaleManager.instance.getStringValue(PreferencesKeys.IMAGE_QUIZ_LIST));
}
