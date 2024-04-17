import 'package:e3ada_4/my_information_page.dart';
import 'package:e3ada_4/sign_up_page.dart';
import 'package:flutter/material.dart';

class OTCUserPage extends StatefulWidget {
  const OTCUserPage({super.key});

  @override
  State<OTCUserPage> createState() => _OTCUserPageState();
}

class _OTCUserPageState extends State<OTCUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(''),
          ),
          actions: <Widget>[
            Padding(padding: EdgeInsets.all(16)),
            IconButton(
              //padding: EdgeInsets.only(right: 30),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25, right: 35, left: 20, top: 50),
                  child: Image.asset(
                    'assets/images/otcUser.png',
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
                            padding: const EdgeInsets.only(bottom: 0, top: 16),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ارسالنا لك رمز علي البريد الالكتروني الخاص بك',
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
                    Container(
                      margin: EdgeInsets.only(top: 36),
                      child: Row(
                        children: [
                          Spacer(),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    borderSide: BorderSide(
                                      color: Color(0xffAFA9AE),
                                    )),
                                hintText: '',
                                hintTextDirection: TextDirection.rtl,
                                contentPadding:
                                    EdgeInsets.only(left: 300, right: 16),
                                fillColor: Color(0xffAFA9AE),
                                constraints: BoxConstraints(
                                  maxHeight: 40,
                                  minWidth: 25,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    borderSide: BorderSide(
                                      color: Color(0xffAFA9AE),
                                    )),
                                hintText: '',
                                hintTextDirection: TextDirection.rtl,
                                contentPadding:
                                    EdgeInsets.only(left: 300, right: 16),
                                fillColor: Color(0xffAFA9AE),
                                constraints: BoxConstraints(
                                  maxHeight: 40,
                                  minWidth: 25,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    borderSide: BorderSide(
                                      color: Color(0xffAFA9AE),
                                    )),
                                hintText: '',
                                hintTextDirection: TextDirection.rtl,
                                contentPadding:
                                    EdgeInsets.only(left: 300, right: 16),
                                fillColor: Color(0xffAFA9AE),
                                constraints: BoxConstraints(
                                  maxHeight: 40,
                                  minWidth: 25,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9)),
                                    borderSide: BorderSide(
                                      color: Color(0xffAFA9AE),
                                    )),
                                hintText: '',
                                hintTextDirection: TextDirection.rtl,
                                contentPadding:
                                    EdgeInsets.only(left: 300, right: 16),
                                fillColor: Color(0xffAFA9AE),
                                constraints: BoxConstraints(
                                  maxHeight: 40,
                                  minWidth: 25,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      width: 382,
                      height: 47,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MyInformationPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFD68FFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                        ),
                        child: Text(
                          'تسجيل الدخول',
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
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(top: 16),
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
