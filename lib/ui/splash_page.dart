import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, homeRoute);
  }

  homeRoute() {
    Get.offAll(HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: CircleAvatar(
            maxRadius: 100,
            backgroundImage: AssetImage(
              'assets/images/azkar.png',
            ),
          )),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                )),
          )
        ],
      ),
    );
  }
}
