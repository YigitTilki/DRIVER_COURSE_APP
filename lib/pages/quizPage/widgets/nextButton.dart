import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:sizer/sizer.dart';

import '../constraints.dart';

class NextButton extends StatelessWidget {
  const NextButton();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.fromLTRB(5.h,0,5.h,0),
      child: Container(
       width: 20.h,
       height: 5.h,
        decoration: BoxDecoration(
            color: syh, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            ButtonData.buttonString,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 2.h,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
