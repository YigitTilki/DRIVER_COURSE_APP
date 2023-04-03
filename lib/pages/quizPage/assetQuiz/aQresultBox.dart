import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:sizer/sizer.dart';

import '../constraints.dart';

class AqResultBox extends StatelessWidget {
  const AqResultBox({
    required this.result,
    required this.questionLength,
    required this.onPressed,
  });
  final int result;
  final VoidCallback onPressed;
  final int questionLength;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: result*6.5 > 70
          ? correct
          : result*6.5 < 70 
              ? inCorrect
              : result > 50
                  ? Colors.yellow
                  : Colors.blue,
      content: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: syh),
          width: 30.h,
          height: 40.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sonuç",
                style: TextStyle(
                    fontSize: 2.5.h,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: 30.h,
                  child: Center(
                    child: Divider(
                        color: result*10>70
                            ? correct
                            : result*10 < 70
                                ? inCorrect
                                : result*10 > 50
                                    ? Colors.yellow
                                    : Colors.blue,
                        thickness: 0.3.h,
                        indent: 3.5.h,
                        endIndent: 3.5.h),
                  )),
              SizedBox(
                height: 2.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Doğru Sorular: $result",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 2.h,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                        size: 2.35.h,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Yanlış Sorular: ${questionLength - result}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 2.h,
                            fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        width: 3.h,
                      ),
                      Icon(
                        Icons.error,
                        color: Colors.redAccent,
                        size: 2.35.h,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                  width: 20.h,
                  child: Divider(
                      color: result*6.5> 70
                          ? correct
                          : result*6.5 <70
                              ? inCorrect
                              : result >50
                                  ? Colors.yellow
                                  : Colors.blue,
                      thickness: 2,
                      indent: 6.h,
                      endIndent: 6.h)),
              SizedBox(
                height: 2.h,
              ),
              Text(
                result*6.5 >70
                    ? "Muhteşem!"
                    : result*6.5 < 70
                        ? ("Başarısız :(")
                        : result*6.5 >50
                            ? "Başarıya çok yaklaştın.."
                            : "",
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic,fontSize: 1.7.h),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                "Sınavdan ${result *6.5} puan aldınız.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 1.7.h,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 3.h,
              ),
              GestureDetector(
                onTap: onPressed,//() {
                  //onPressed;
                  //UserData.updateTotalCQ(result);
                  //UserData.updateTotaliCQ(questionLength - result);
                  //if (result > questionLength / 2) {
                    //UserData.updateTotalQuiz();
                  //}
                //},
                child: SizedBox(
                  height: 6.h,
                  width: 12.h,
                  child: Card(
                      elevation: 5,
                      color: mr,
                      child: Center(
                          child: Text(
                        "Anasayaya Dön",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 1.7.h),
                        textAlign: TextAlign.center,
                      ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
