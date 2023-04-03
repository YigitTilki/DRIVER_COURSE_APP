import 'package:flutter/material.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/data/jsonQuizlist.dart';
import 'package:sizer/sizer.dart';

Icon createIcon(int index) {
  if (JsonQuizList.tempQuizObject[(index + 1).toString()]["true"]>JsonQuizList.tempQuizObject[(index + 1).toString()]["false"]) {
    return Icon(
      Icons.check_circle,
      color: Colors.greenAccent,
      size: 3.h,
    );
  } else if (JsonQuizList.tempQuizObject[(index + 1).toString()]["true"]<JsonQuizList.tempQuizObject[(index + 1).toString()]["false"]) {
    return Icon(
      Icons.error,
      color: Colors.redAccent,
      size: 3.h,
    );
  } else {
    return Icon(
      Icons.question_mark_rounded,
      color: Colors.white,
      size: 3.h,
    );
  }
}

Icon iQcreateIcon(int index) {
  if (JsonQuizList.tempImageQuizObject[(index + 1).toString()]["true"] >
      JsonQuizList.tempImageQuizObject[(index + 1).toString()]["false"]) {
    return Icon(
      Icons.check_circle,
      color: Colors.greenAccent,
      size: 3.h,
    );
  } else if (JsonQuizList.tempImageQuizObject[(index + 1).toString()]["true"] <
      JsonQuizList.tempImageQuizObject[(index + 1).toString()]["false"]) {
    return Icon(
      Icons.error,
      color: Colors.redAccent,
      size: 3.h,
    );
  } else {
    return Icon(
      Icons.question_mark_rounded,
      color: Colors.white,
      size: 3.h,
    );
  }
}
