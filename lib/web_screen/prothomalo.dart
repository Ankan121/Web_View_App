import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controller/home_controller.dart';

class Prothomalo extends StatefulWidget {
  const Prothomalo({super.key});

  @override
  State<Prothomalo> createState() => _ProthomaloState();
}

class _ProthomaloState extends State<Prothomalo> {
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
        body: WebViewWidget(controller: web.Prothomalo),
      ),
    );
  }
}
