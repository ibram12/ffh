import 'package:e3ada_4/my_information_page.dart';
import 'package:e3ada_4/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      bottom: 25, right: 35, left: 20, top: 150),
                  child: Image.asset(
                    'assets/images/SignUp.png',
                    height: 350,
                    width: 350,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 8, left: 8, bottom: 0),
                width: 500,
                height: 317,
                child: Column(
                  children: [
                    Container(
                      width: 364,
                      height: 60,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Text(
                              'تسجيل الدخول',
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: Container(
                        width: 382,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginPage()),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.g_mobiledata_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 32, top: 10),
                                  child: Text(
                                    'إنشاء حساب باستخدام جوجل',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF100D10),
                                      fontSize: 12,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w700,
                                      height: 0.06,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: Container(
                        width: 382,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => MyInformationPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3B5998),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  // child: Image.asset(
                                  //   'assets/images/GoogleIcon.png',
                                  //   height: 50,
                                  //   width: 50,
                                  // ),
                                  child: Icon(
                                    Icons.facebook_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 10),
                                  child: Text(
                                    'إنشاء حساب باستخدام الفيس بوك',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w700,
                                      height: 0.06,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 19),
                      child: Container(
                        width: 382,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => MyInformationPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF100D10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0),
                                  // child: Image.asset(
                                  //   'assets/images/GoogleIcon.png',
                                  //   height: 50,
                                  //   width: 50,
                                  // ),
                                  child: Icon(
                                    Icons.apple_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 43, top: 10),
                                  child: Text(
                                    'apple إنشاء حساب باستخدام ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w700,
                                      height: 0.06,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 364,
                      height: 60,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext) {
                                        return SignUpPage();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 100),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20, right: 5),
                                    child: Text(
                                      'إنشاء حساب',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Tajawal',
                                        color: Color(0XFFD68FFF),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 40, top: 16),
                                child: Text(
                                  'ليس لديك حساب ؟',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF0B0F0F),
                                    fontSize: 12,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w600,
                                    height: 0.07,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}