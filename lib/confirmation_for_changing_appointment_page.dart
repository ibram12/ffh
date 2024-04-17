import 'package:e3ada_4/home_page.dart';
import 'package:flutter/material.dart';

class ConfirmationForChangingingAppointmentPage extends StatefulWidget {
  const ConfirmationForChangingingAppointmentPage({super.key});

  @override
  State<ConfirmationForChangingingAppointmentPage> createState() =>
      _ConfirmationForChangingingAppointmentPageState();
}

class _ConfirmationForChangingingAppointmentPageState
    extends State<ConfirmationForChangingingAppointmentPage> {
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
        padding: EdgeInsets.only(top: 70, right: 16, left: 16),
        child: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/images/cancelORchange.png',
                height: 350,
                width: 350,
              ),
              Container(
                height: 90,
                width: 220,
                alignment: Alignment.center,
                child: Text(
                  'تم تعديل الموعد جلسه بنجاج انتظر تاكيد المعالج علي المعاد استمر في متابعه اشعاراتك',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 85,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: GestureDetector(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
