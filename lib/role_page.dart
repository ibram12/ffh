import 'package:e3ada_4/Login_page.dart';
import 'package:e3ada_4/sign_up_page.dart';
import 'package:e3ada_4/sign_up_therapist_page.dart';
import 'package:flutter/material.dart';

class RolePage extends StatefulWidget {
  const RolePage({super.key});

  @override
  State<RolePage> createState() => _RolePageState();
}

class _RolePageState extends State<RolePage> {
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
        child: Center(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 100, right: 35, left: 20, top: 130),
                  child: Image.asset(
                    'assets/images/Role.png',
                    height: 350,
                    width: 350,
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 0, right: 8, left: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                    width: 500,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                          width: 364,
                          height: 60,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Text(
                                  'مرحبا بك  ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0B0F0F),
                                    fontSize: 20,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w700,
                                    height: 0.07,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'تريد التسجيل كمعالج ام كمستخدم للتطبيق',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF494649),
                                    fontSize: 16,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: Container(
                            width: 382,
                            height: 52,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => SignUpPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD68FFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7, vertical: 12),
                              ),
                              child: Text(
                                'مستخدم',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100D10),
                                  fontSize: 20,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => SignUpTherapistPage()),
                                );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 382,
                    height: 52,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFD68FFF)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'معالج',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFD68FFF),
                            fontSize: 20,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                            height: 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
