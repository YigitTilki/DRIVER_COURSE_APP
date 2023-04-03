import 'package:flutter/material.dart';
import 'package:driver_course_app/locale_keys_enum.dart';
import 'package:driver_course_app/locale_manager.dart';
import 'package:driver_course_app/pages/data/data.dart';
import 'package:driver_course_app/pages/quizPage/constraints.dart';
import 'package:sizer/sizer.dart';

import 'progress.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final String name =
      LocaleManager.instance.getStringValue(PreferencesKeys.USER);

  final String urlUser = "assets/images/user.png";

  final String urlIcon = "assets/images/icon.png";
  final String info =
      "Ehliyette Çorlu'nun yeni adresi Özel İnci Deniz Sürücü Kursu\nAMAÇ SÜRÜCÜ OLMAK DEĞİL!";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Color.fromRGBO(110, 94, 168, 1)),
          backgroundColor: Color.fromRGBO(51, 61, 71, 1),
          elevation: 5,
        ),
        body: Container(
          padding: EdgeInsets.all(2.h),
          width: 50.h,
          height: 100.h,
          decoration: BoxDecoration(color: Color.fromRGBO(110, 94, 168, 1)),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 0.3.h),
                  child: Container(
                    width: 40.h,
                    height: 10.h,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color.fromRGBO(51, 61, 71, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 1.h,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 7.h,
                              height: 8.h,
                              padding: EdgeInsets.all(1.h),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(urlUser),
                                      fit: BoxFit.none,
                                      scale: 1.5.h)),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              width: 10.h,
                              height: 8.h,
                              padding: EdgeInsets.only(right: 2.h),
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      1.h, 1.5.h, 1.h, 1.5.h),
                                  child: Text(
                                    "Merhaba! " + name,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 2.h),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 2.5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "İlerleme Durumunuz:",
                        style: TextStyle(color: Colors.white, fontSize: 2.2.h),
                      ),
                      Container(
                        width: 50.h,
                        height: 35.h,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromRGBO(51, 61, 71, 1),
                            child: ProgressBar()),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 1.5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hakkımızda:",
                        style: TextStyle(color: Colors.white, fontSize: 2.2.h),
                      ),
                      Container(
                        width: 40.h,
                        height: 28.h,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Color.fromRGBO(51, 61, 71, 1),
                            child: Container(
                              child: Padding(
                                  padding: EdgeInsets.all(1.h),
                                  child: Card(
                                    color: mr,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Center(
                                          child: Text(
                                            info,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 2.1.h),
                                          ),
                                        ),
                                        Container(
                                            width: 8.h,
                                            height: 8.h,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/logo.png")),
                                            ))
                                      ],
                                    ),
                                  )),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
