import 'package:e3ada_4/profile_for_therapist_flow_page.dart';
import 'package:flutter/material.dart';

class SummitRequestPage extends StatefulWidget {
  const SummitRequestPage({super.key});

  @override
  State<SummitRequestPage> createState() => _SummitRequestPageState();
}

class _SummitRequestPageState extends State<SummitRequestPage> {
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
                  'تم ارسال طلبك لفرق الدعم ليتم مراجعه بياناتك \nتابع بريدك الالكتروني لمعرفه نتيجه طلبك',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),

      //////////////////////////////////////////////////////////////////////

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _SalaryPopup(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _SalaryPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
          title: Center(
            child: Text(
              'ادخل سعر جلستك',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        actions: [
          Column(
            
            children: [
              Text(
                'سعر الجلسه',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        borderSide: BorderSide(
                          color: Color(0xffAFA9AE),
                        )),
                    hintText: '',
                    hintTextDirection: TextDirection.rtl,
                    contentPadding: EdgeInsets.only(left: 300, right: 16),
                    fillColor: Color(0xffAFA9AE),
                    constraints: BoxConstraints(
                      maxHeight: 40,
                      minWidth: 25,
                    ),
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          ProfileForTherapistFlowPage()),
                                );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD68FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                  ),
                  child: const Text(
                    ' تاكيد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Add the desired font weight
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
