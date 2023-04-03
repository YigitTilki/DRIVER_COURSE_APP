import 'package:flutter/material.dart';

Color correct = Colors.green;
Color inCorrect = Colors.red;
Color neutral = Colors.blue;
Color background = Colors.grey;
Color syh = Color.fromRGBO(51, 61, 71, 1);
Color mr = Color.fromRGBO(110, 94, 168, 0.9);
Icon resultIcon(bool result) {
  if (result == true) {
    return Icon(
      Icons.task_alt_rounded,
      color: Colors.greenAccent,
      size: 50,
    );
  } else if (result == false) {
    return Icon(
      Icons.highlight_alt_rounded,
      color: Colors.redAccent,
      size: 50,
    );
  } else {
    return Icon(
      Icons.question_mark_rounded,color: Colors.white,size: 50,
    );
  }
}
