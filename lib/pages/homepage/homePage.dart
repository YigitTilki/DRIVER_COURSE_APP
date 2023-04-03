import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:driver_course_app/functions/functions.dart';
import 'package:driver_course_app/pages/pdfPage/bookPage.dart';
import 'package:driver_course_app/pages/quizPage/screens/quizCategory.dart';
import 'package:driver_course_app/pages/quizPage/screens/quizForm.dart';
import 'package:driver_course_app/pages/summaryPage/sPage.dart';
import 'package:driver_course_app/pages/summaryPage/sumPage.dart';

import 'package:driver_course_app/pages/videoPage/catalogPage.dart';
import 'package:driver_course_app/pages/webview/webview.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sizer/sizer.dart';

import '../quizPage/constraints.dart';
import 'navBar.dart';

class HomePage extends StatelessWidget {
  final String url = "assets/images/background.png";
  final String url1 = "assets/images/ebook.png";
  final String url2 = "assets/images/calendar.png";
  final String url3 = "assets/images/test.png";
  final String url4 = "assets/images/video.png";
  final String url5 = "assets/images/time.png";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: '5426527778',
      );
      await launchUrl(launchUri);
    }

    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      )) {
        throw 'Could not launch $url';
      }
    }

    final Uri toLaunch = Uri(
        scheme: 'https',
        host: 'www.facebook.com',
        path: 'people/Özel-İnciDeniz-MTSürücüleri-Kursu/100056682142716/');

    final Uri toLaunchi = Uri(
        scheme: 'https',
        host: 'www.instagram.com',
        path: 'incidenizmtskcorlu/');
    Future<bool> _onWillPop() async {
  return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: syh,
          title: new Text('Emin misiniz?',style: TextStyle(
            color: Colors.white
          ),),
          content: new Text('Uygulamadan ayrılmak üzeresiniz',style: TextStyle(
            color: Colors.white
          ),),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                primary: mr
              ),
              onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
              child: new Text('İptal'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: mr
              ),
              onPressed: () => Navigator.of(context).pop(true), // <-- SEE HERE
              child: new Text('Onayla'),
            ),
          ],
        ),
      )) ??
      false;
}
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        endDrawer: NavBar(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("İnci Deniz Mobil"),
          backgroundColor: Color.fromRGBO(51, 61, 71, 1),
          elevation: 5,
          actions: <Widget>[
            Builder(builder: (context) {
              return IconButton(
                padding: EdgeInsets.only(right: 1.h),
                icon: Icon(
                  Icons.menu,
                  color: Color.fromRGBO(110, 94, 168, 1),
                  size: 3.5.h,
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            })
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(url),
                  fit: BoxFit.none,
                  scale: 0.2.h,
                  opacity: 0.5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(2.h, 2.h, 1.h, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: CreateCard(20.h, 20.h, "E-Kitap", url1, 6.h, 6.h, 2.7.h),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => BookPage(
                                      pdfAssetPath: 'assets/eKitap.pdf',
                                    ))));
                      },
                    ),
                    GestureDetector(
                      child:
                          Container(
                            padding: EdgeInsets.fromLTRB(2.h, 0, 1.h, 0),
                            child: CreateCard(20.h, 20.h, "Sınav Takvimi", url2, 6.h, 6.h, 2.7.h)),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebViewPage()));
                      },
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(2.h, 0, 2.h, 0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Quizform())));
                      },
                      child: CreateCard(45.h, 30.h, "Soru Çöz", url3, 10.h, 10.h, 4.5.h))),
              Container(
                padding: EdgeInsets.fromLTRB(2.h, 0, 2.h, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: CreateCard(20.h, 20.h, "Video", url4, 6.h, 6.h, 2.7.h),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return CatalogPage();
                        })));
                      },
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      SumCategory())));
                        },
                        child: CreateCard(
                            20.h, 20.h, "Geçmiş Sınav", url5, 6.h, 6.h, 2.7.h))
                  ],
                ),
              ),
              Container(
                  width: 190.h,
                  height: 8.h,
                  padding: EdgeInsets.fromLTRB(2.h, 0, 2.h, 1.h),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color.fromRGBO(110, 94, 168, 0.9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => {launchUrl(toLaunch)},
                          icon: Icon(Icons.facebook),
                          padding: EdgeInsets.only(right: 10.h),
                          iconSize: 4.h,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () => {launchUrl(toLaunchi)},
                          icon: FaIcon(FontAwesomeIcons.instagram),
                          iconSize: 4.h,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () => {_makePhoneCall('5426527778')},
                          icon: Icon(Icons.phone),
                          padding: EdgeInsets.only(left: 10.h),
                          iconSize: 4.h,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
