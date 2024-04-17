import 'dart:async';
import 'package:e3ada_4/splash_2_page.dart';
import 'package:flutter/material.dart';

class SplashOnePage extends StatefulWidget {
  const SplashOnePage({super.key});

  @override
  State<SplashOnePage> createState() => __SplashOnePageState();
}

class __SplashOnePageState extends State<SplashOnePage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SplashTwoPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5BDFE),
              Color(0xFFE6BDFE),
              Color(0xFF55D4FF),
            ],
            stops: [
              0.12,
              0.7,
              1,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}