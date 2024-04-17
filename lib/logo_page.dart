import 'dart:async';

import 'package:e3ada_4/Login_page.dart';
import 'package:e3ada_4/onboarding_1_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoPage extends StatefulWidget {
  const LogoPage({super.key});

  @override
  State<LogoPage> createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getX
      Get.to(() => const LoginPage());
    });
  }

  List<Widget> logoParts = [
    LogoPart(imagePath: 'assets/images/LogoOne.png'),
    LogoPart(imagePath: 'assets/images/LogoTwooo.png'),
  ];

 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Onboarding1Page(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < logoParts.length; i++)
              AnimatedLogoPart(
                child: logoParts[i],
                delay: i * 200, // Change delay as needed
              ),
          ],
        ),
      ),
    );
    });
  }
}

class LogoPart extends StatelessWidget {
  final String imagePath;

  const LogoPart({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: 200,
      height: 200,
    );
  }
}

class AnimatedLogoPart extends StatefulWidget {

    final Widget child;
  final int delay;

  const AnimatedLogoPart({required this.child, required this.delay});


  @override
  State<AnimatedLogoPart> createState() => _AnimatedLogoPartState();
}

class _AnimatedLogoPartState extends State<AnimatedLogoPart> {
  double opacity = 0.0;

    @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: widget.delay), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedOpacity(
      opacity: opacity,
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
      child: widget.child,
    );
  }
}
//vvvvvv