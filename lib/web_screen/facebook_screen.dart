import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controller/home_controller.dart';

class Facebook_Screen extends StatefulWidget {
  const Facebook_Screen({super.key});

  @override
  State<Facebook_Screen> createState() => _Facebook_ScreenState();
}

class _Facebook_ScreenState extends State<Facebook_Screen> {
  final web = Home_Controller();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_rounded,color: Colors.black,)),
        ),
        body: WebViewWidget(controller: web.Fabebook),
      ),
    );
  }
}
