import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:driver_course_app/locale_keys_enum.dart';
import 'package:driver_course_app/locale_manager.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:sizer/sizer.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  final int? tss =
      LocaleManager.instance.getIntValue(PreferencesKeys.TOTAL_QUESTION);
  final int? tds =
      LocaleManager.instance.getIntValue(PreferencesKeys.TRUE_ANSWER);
  final int? tys =
      LocaleManager.instance.getIntValue(PreferencesKeys.FALSE_ANSWER);
  final int? tbss =
      LocaleManager.instance.getIntValue(PreferencesKeys.TOTAL_COMPLETED_QUIZ);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 6.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Icon(Icons.badge_rounded, color: Colors.white),
              ),
            ),
            Container(
              width: 25.1.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Container(
                    margin: EdgeInsets.all(1.5.h),
                    child: Text(
                      "Çözülen soru sayısı: " + tss.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 1.8.h),
                    )),
              ),
            ),
          ],
        )), //toplam çözülen soru
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 6.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Icon(Icons.check, color: Colors.white),
              ),
            ),
            Container(
              width: 25.1.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Container(
                    margin: EdgeInsets.all(1.5.h),
                    child: Text(
                      "Doğru soru sayısı: " + tds.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 1.8.h),
                    )),
              ),
            ),
          ],
        )), // doğru sayısı
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 6.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Icon(Icons.close_rounded, color: Colors.white),
              ),
            ),
            Container(
              width: 25.1.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Container(
                    margin: EdgeInsets.all(1.5.h),
                    child: Text(
                      "Yanlış soru sayısı: " + tys.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 1.8.h),
                    )),
              ),
            ),
          ],
        )), //yanlış sayısı
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 6.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Icon(Icons.task_rounded, color: Colors.white),
              ),
            ),
            Container(
              width: 25.1.h,
              height: 6.h,
              child: Card(
                color: Color.fromRGBO(110, 94, 168, 1),
                child: Container(
                    margin: EdgeInsets.all(1.5.h),
                    child: Text(
                      "Başarılı sınav sayısı: " + tbss.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 1.8.h),
                    )),
              ),
            ),
          ],
        )), //başarılı sınav sayısı
      ],
    );
  }
}
