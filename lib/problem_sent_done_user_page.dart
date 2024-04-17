import 'package:e3ada_4/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProblemSentDoneUserPage extends StatefulWidget {
  const ProblemSentDoneUserPage({super.key});

  @override
  State<ProblemSentDoneUserPage> createState() =>
      _ProblemSentDoneUserPageState();
}

class _ProblemSentDoneUserPageState extends State<ProblemSentDoneUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(''),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15, right: 16, left: 16),
        child: Container(
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svg/problemSentDoneUser.svg',
                height: 380,
                width: 380,
              ),
              Container(
                height: 180,
                width: 220,
                alignment: Alignment.center,
                child: Text(
                  '         \n\t\tتم ارسال شكوتك بنجاح لا تقلق سوف يعمل فريق الدعم علي حلها في اقرب وقت',
                 textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 85,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return HomePage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffD68FFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  height: 45,
                  width: double.infinity,
                  //color: Color(0xffD68FFF),
                  child: Center(
                    child: Text(
                      'العوده للصفحه الرئيسيه',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.bold,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 18,
                      ),
                    ),
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
