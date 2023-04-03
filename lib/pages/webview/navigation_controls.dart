import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';

class NavigationCtrl extends StatelessWidget {
  const NavigationCtrl({required this.controller });

  final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
            onPressed: (() async {
              final messenger = ScaffoldMessenger.of(context);
              if (await controller.canGoBack()) {
                await controller.goBack();
              } else {
                messenger.showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 1),
                      content: Text("Bunu yapamazsınız.")));
                return;
              }
            }),
            icon: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(110, 94, 168, 1),)),
        IconButton(
            onPressed: (() async {
              final messenger = ScaffoldMessenger.of(context);
              if (await controller.canGoForward()) {
                await controller.goForward();
              } else {
                messenger.showSnackBar(
                
                    SnackBar(
                      duration: Duration(seconds: 1),content: Text("Bunu yapamazsınız.")));
                return;
              }
            }),
            icon: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(110, 94, 168, 1),)),
        IconButton(
            onPressed: (() {
              controller.reload();
            }),
            icon: Icon(Icons.replay,color: Color.fromRGBO(110, 94, 168, 1),))
      ],
    );
  }
}
