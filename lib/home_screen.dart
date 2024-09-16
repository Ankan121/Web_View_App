import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:web_view_flutter/web_screen/cricbuzz.dart';
import 'package:web_view_flutter/web_screen/facebook_screen.dart';



class Web_View extends StatefulWidget {
  const Web_View({super.key});

  @override
  State<Web_View> createState() => _Web_ViewState();
}

class _Web_ViewState extends State<Web_View> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmed to be back'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),

            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (e)async{
        await _showMyDialog();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.blue,
          title: const Text('Web View',style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 10,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Facebook_Screen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 48, // Image radius
                        backgroundImage: NetworkImage('https://images.hindustantimes.com/tech/img/2023/09/21/960x540/fb_1695273515215_1695273522698.jpg'),
                      ),
                      Text('Facebook',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cricbuzz()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 48, // Image radius
                        backgroundImage: NetworkImage('https://static.cricbuzz.com/a/img/v1/i1/c379130/4th-match-duleep-trophy-2024.jpg?d=high&p=det'),
                      ),
                      Text('Cricbuzz',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> cricbuzz()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 48, // Image radius
                        backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/FcDJFdYY_3XKR91QmCr_yXlkkIXerZLeo-Ax49nSpwoy69TQLHR9wWrfZea_hoBjudo'),
                      ),
                      Text('Prothomalo',style: TextStyle(fontSize: 25),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//WebViewWidget(controller: web.controller),