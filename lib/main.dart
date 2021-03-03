import 'dart:async';

import 'package:flutter/material.dart';
import 'web_view.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: FirstRoute(),
  ));
}


class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),()=>Navigator.push(context,MaterialPageRoute(builder: (context) => WebScreen()),));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BasicWebView App',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: SpinKitFadingCircle(
        color: Colors.greenAccent,
        size: 100.0,
      ),
    );
  }
}
//Center(
//child: ElevatedButton(
//child: Text('Open route'),
//onPressed: () {


