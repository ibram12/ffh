import 'dart:async';
import 'package:e3ada_4/logo_page.dart';
import 'package:flutter/material.dart';

class SplashTwoPage extends StatefulWidget {
  const SplashTwoPage({super.key});

  @override
  State<SplashTwoPage> createState() => _SplashTwoPageState();
}

class _SplashTwoPageState extends State<SplashTwoPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LogoPage(),
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
            colors: [Colors.white],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}
