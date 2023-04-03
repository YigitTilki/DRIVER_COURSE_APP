import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({required this.question,});

  final String question;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Center(
        child: Text("${widget.question}",
        style: TextStyle(
          fontSize: 3.h,
          color: Colors.white
        ),
        textAlign: TextAlign.center,),
      ),
    );
  }
}
