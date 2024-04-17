import 'package:e3ada_4/role_page.dart';
import 'package:flutter/material.dart';

class Onboarding2Page extends StatefulWidget {
  const Onboarding2Page({super.key});

  @override
  State<Onboarding2Page> createState() => _Onboarding2PageState();
}

class _Onboarding2PageState extends State<Onboarding2Page> {
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
          child: Column(children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100, right: 35,left: 20,top: 150),
                child: Image.asset('assets/images/ohbording.png'),
              ),
            ),
            Positioned(
                
                bottom: 0,
              
                child: Container(
                  padding: EdgeInsets.only(top: 0, right: 8,left: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                  width: 500,
                  height: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top:0 ,
                          bottom: 25,
                        ),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Text(
                             'تطبيق "Mint-L" هو منصة مبتكره واداه قوية و ملائمة تتيح للأطباء النفسيين الانضمام وتقديم خدماتهم عبر الإنترنت. حيث يمكنهم تاعمل بمرونة و الوصول إلي جمهور واسع من المرضي في أي وقت وأي مكان.',
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
                                    builder: (builder) => RolePage()),
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
                              'ابدا',
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
          ]),
        ),
      ),
    );
  }
}
