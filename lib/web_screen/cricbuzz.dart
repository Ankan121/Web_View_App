import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controller/home_controller.dart';

class cricbuzz extends StatefulWidget {
  const cricbuzz({super.key});

  @override
  State<cricbuzz> createState() => _cricbuzzState();
}

class _cricbuzzState extends State<cricbuzz> {
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
        body: WebViewWidget(controller: web.Cricbuzz),
      ),
    );
  }
}
