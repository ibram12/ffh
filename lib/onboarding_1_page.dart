import 'package:e3ada_4/onbording_2_page.dart';
import 'package:e3ada_4/role_page.dart';
import 'package:flutter/material.dart';

class Onboarding1Page extends StatefulWidget {
  const Onboarding1Page({super.key});

  @override
  State<Onboarding1Page> createState() => _Onboarding1PageState();
}

class _Onboarding1PageState extends State<Onboarding1Page> {
  
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
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 60,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 350, right: 40),
                  child: Image.asset(
                      'assets/images/illustration_for_onbording.png'),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.only(top: 20, right: 80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  width: 500,
                  height: 300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Text(
                            'يُعد تطبيق "Mint-L" شريكًا موثوقًا وداعمًا للمستخدمين في رحلتهم الشخصية والعاطفية. يجمع بين القدرات الفريدة لتتبع المزاج والمعالج النفسي الافتراضي لتقديم تجربة معززة ومرضية، وذلك لتحسين العافية العامة والسعادة النفسية للمستخدمين.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF494649),
                              fontSize: 16,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          width: 382,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Onboarding2Page()),
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
                              'التالي',
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (builder) => RolePage()),
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
                                side: BorderSide(
                                    width: 1, color: Color(0xFFD68FFF)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'تخطي ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF100D10),
                                    fontSize: 20,
                                    fontFamily: 'Tajawal',
                                    fontWeight: FontWeight.w700,
                                    height: 0.06,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
