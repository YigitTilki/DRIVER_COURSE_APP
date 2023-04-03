import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:driver_course_app/pages/loginPage/loginPage.dart';
import 'package:driver_course_app/pages/quizPage/constraints.dart';

import '../homepage/homePage.dart';
import 'package:sizer/sizer.dart';

List<Widget> loginPages = [FirstPage(), LoginPage()];

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Future<bool> checkInternet() async {
    final cnnctResult = await (Connectivity().checkConnectivity());
    if (cnnctResult == ConnectivityResult.mobile) {
      return true;
    } else if (cnnctResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: 105.h,
        width: 105.h,
        color: Color.fromRGBO(51, 61, 71, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              "İnci Deniz Sürücü Kursu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 5.h,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                width: 25.h,
                height: 1.2.h,
                child: Card(
                  color: Color.fromRGBO(110, 94, 168, 1),
                  elevation: 3,
                )),
            Container(
              width: 40.h,
              height: 40.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/login.png"),
              )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 15.h,
              height: 5.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: mr),
                onPressed: () async {
                  if (await checkInternet()) {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: mr,
                            content: Padding(padding: EdgeInsets.all(3.h),
                            child: Text("İnternete Bağlı Değilsiniz !",style: TextStyle(
                              fontSize: 3.h,color: Colors.white
                            ),textAlign: TextAlign.center,),),
                          );
                        });
                  }
                },
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.h,
                      fontStyle: FontStyle.italic),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
