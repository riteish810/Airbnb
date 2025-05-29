// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
import 'dart:async';
// import 'package:airbnb/Custom/background_color.dart';
import 'package:airbnb/view/login_screen.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.to(LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.amber],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1, 0),
            stops: [0, 1],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset("images/splash.png"),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
