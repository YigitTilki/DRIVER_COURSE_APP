import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../constraints.dart';
import 'package:sizer/sizer.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({ required this.color, required this.option});
  final String option;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 48.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
      
            ),
        color: color,
        child: ListTile(
          title: Center(
            child: Text(
              option,
              style: TextStyle(
                fontSize: 2.h,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
