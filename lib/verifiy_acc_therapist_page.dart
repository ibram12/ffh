import 'package:e3ada_4/otc_therapist_page.dart';
import 'package:e3ada_4/sign_up_therapist_page.dart';
import 'package:flutter/material.dart';

class VerifiyAccountTherapistPage extends StatefulWidget {
  const VerifiyAccountTherapistPage({super.key});

  @override
  State<VerifiyAccountTherapistPage> createState() => _VerifiyAccountTherapistPageState();
}

class _VerifiyAccountTherapistPageState extends State<VerifiyAccountTherapistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25, right: 35, left: 20, top: 150),
                  child: Image.asset(
                    'assets/images/email.png',
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
                            padding: const EdgeInsets.only(bottom: 20, top: 16),
                            child: Text(
                              'تحقق من حسابك',
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
                      padding: const EdgeInsets.only(right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'البريد الالكتروني',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Tajawal',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              borderSide: BorderSide(
                                color: Color(0xffAFA9AE),
                              )),
                          hintText: 'tarek.mohammedd@gmail.com',
                          hintTextDirection: TextDirection.rtl,
                          contentPadding: EdgeInsets.only(left: 300, right: 16),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xffAFA9AE),
                          ),
                          fillColor: Color(0xffAFA9AE),
                          constraints: BoxConstraints(
                            maxHeight: 40,
                            minWidth: 25,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext) {
                              return OtcTherapistPage();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
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
                              'ارسال',
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
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
                                          return SignUpTherapistPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 48),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 20, right: 5),
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
                                  padding: const EdgeInsets.only(
                                      bottom: 40, top: 16),
                                  child: Text(
                                    'تريد انشاء حساب بطريقه اخري ؟',
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