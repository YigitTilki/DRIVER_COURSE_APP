import 'package:flutter/material.dart';


import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';

import 'navigation_controls.dart';
import 'web_view_stack.dart';

class WebViewPage extends StatefulWidget {
  

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
      Uri.parse('https://www.ehliyetsinavsorulari.org/ehliyet-sinav-tarihleri/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(110, 94, 168, 1)),
        title: Text("Ehliyet Sınav Takvimi",style: TextStyle(fontSize: 2.2.h),),
        actions: [
          NavigationCtrl(controller: controller),
          
        ],
        backgroundColor: Color.fromRGBO(51, 61, 71, 1),
        elevation: 5,
      ),
      body: WebViewStack(controller: controller,)
    );
  }
}
