import 'dart:async';
import 'package:e3ada_4/confirmation_for_canceling_appointment_page.dart';
import 'package:e3ada_4/confirmation_for_changing_appointment_page.dart';
import 'package:e3ada_4/user_history_page.dart';
import 'package:flutter/material.dart';

class MySessionPage extends StatefulWidget {
  const MySessionPage({Key? key}) : super(key: key);

  @override
  State<MySessionPage> createState() => _MySessionPageState();
}

class _MySessionPageState extends State<MySessionPage> {
  void _PrescriptionPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, ''),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD68FFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                ),
                child: const Text(
                  'تحميل الروشته',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        );
      },
    );
  }

  void _OpptionsUserAfterOrBrfore24hPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  _ChangeAppointmentForUserAfterOrBrfore24hPopup(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD68FFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                ),
                child: const Text(
                  'تغيير الموعد',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Vertical spacing
            OutlinedButton(
              onPressed: () {
                _CancelAppointmentForUserAfterOrBrfore24hPopup(context);
              },
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Color(0xffD68FFF)), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 40), // Minimum button size
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: const Text('الغاء الموعد',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD68FFF))),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        );
      },
    );
  }

  void _CancelAppointmentForUserAfterOrBrfore24hPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'هل تريد الغاء الموعد؟',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          content: Text(
            '(إذا مر 24h فقد تم تجاوز الوقت المتاح لذلك سيتم  خصم  20% من ثمن الجلسه)',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            textDirection: TextDirection.rtl,
          ),
          actions: [
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return ConfirmationForCancelingAppointmentPage();
                      },
                    ),
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
                  'نعم',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Vertical spacing
            OutlinedButton(
              onPressed: () => Navigator.pop(context, 'لا'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Color(0xffD68FFF)), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 40), // Minimum button size
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: const Text('لا',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD68FFF))),
            ),
          ],
        );
      },
    );
  }

  void _ChangeAppointmentForUserAfterOrBrfore24hPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'هل تريد تغيير الموعد؟',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          content: Text(
            '(إذا مر 24h فقد تم تجاوز الوقت المتاح لذلك سيتم  اضافه  20% زياده من ثمن الجلسه)',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            textDirection: TextDirection.rtl,
          ),
          actions: [
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  _showChangeAppointmentDialog();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD68FFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                ),
                child: const Text(
                  'نعم',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Vertical spacing
            OutlinedButton(
              onPressed: () => Navigator.pop(context, 'لا'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Color(0xffD68FFF)), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 40), // Minimum button size
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: const Text('لا',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD68FFF))),
            ),
          ],
        );
      },
    );
  }

  final List<String> daysOfWeek = [
    'الجمعه',
    'الخميس',
    'الاربعاء',
    'الثلاثاء',
    'الاثنين',
    'الاحد',
    'السبت'
  ];

  final List<String> time = [
    '12:00 ص',
    '1:00 ص',
    '2:00 ص',
    '3:00 ص',
    '4:00 ص',
    '5:00 ص',
    '6:00 ص',
    '7:00 ص',
    '8:00 ص',
    '9:00 ص',
    '10:00 ص',
    '11:00 ص',
    '12:00 م',
    '1:00 م',
    '2:00 م',
    '3:00 م',
    '4:00 م',
    '5:00 م',
    '6:00 م',
    '7:00 م',
    '8:00 م',
    '9:00 م',
    '10:00 م',
    '11:00 م',
  ];
  StreamController<String> _notificationStreamController =
      StreamController<String>(); // Initial notification text
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // Simulate changing notification text every 3 seconds
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      _notificationStreamController.add('Notification ${t.tick + 1}');
    });
  }

  @override
  void dispose() {
    _notificationStreamController.close();
    timer?.cancel();
    super.dispose();
  }

  void _showChangeAppointmentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'تغيير المعاد',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          content: Text(
            'المواعيد الاخري المتاحه للمعالج (اختار المعاد الان)',
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            textDirection: TextDirection.rtl,
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: daysOfWeek.map((day) {
                    return ElevatedButton(
                      onPressed: () {
                        // Handle button tap
                        print('$day tapped');
                      },
                      child: Text(day),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: time.map((day) {
                    return ElevatedButton(
                      onPressed: () {
                        // Handle button tap
                        print('$day tapped');
                      },
                      child: Text(day),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: (){
                  _SaveForProfileUpdatePopup(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD68FFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                ),
                child: const Text(
                  'تاكيد',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ), // First elevated button
            const SizedBox(height: 16), // Vertical spacing
            OutlinedButton(
              onPressed: () => Navigator.pop(context, 'لا'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Color(0xffD68FFF)), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 40), // Minimum button size
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: const Text('الغاء الحجز',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD68FFF))),
            ),
          ],
        );
      },
    );
  }

 void _SaveForProfileUpdatePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(
              'هل تريد حفظ التعديلات ؟',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          actions: [
            Container(
              width: 500,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return ConfirmationForChangingingAppointmentPage();
                      },
                    ),
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
                  'نعم',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Add the desired font weight
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16), // Vertical spacing
            OutlinedButton(
              onPressed: () => Navigator.pop(context, 'لا'),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Color(0xffD68FFF)), // Border color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 40), // Minimum button size
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: const Text('لا',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD68FFF))),
            ),
          ],
        );
      },
    );
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                padding: EdgeInsets.only(right: 120),
                icon: Icon(
                  Icons.local_atm,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => UserHistoryPage()),
                  );
                },
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Text(
                'جلساتي',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
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
          ])
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'جلسات اليوم',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _OpptionsUserAfterOrBrfore24hPopup(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'كريم محمد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'التخصص :طبيب نفسي و استشاري علاقات',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 8, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 10, left: 8, right: 6),
                                    child: Text(
                                      '4.0',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 6, top: 0, bottom: 19),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xffFFA927),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 16, bottom: 8, left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.grey,
                              ),
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'جلسات قادمه',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _OpptionsUserAfterOrBrfore24hPopup(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'كريم محمد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'التخصص :طبيب نفسي و استشاري علاقات',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 8, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 10, left: 8, right: 6),
                                    child: Text(
                                      '4.0',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 6, top: 0, bottom: 19),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xffFFA927),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 16, bottom: 8, left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.grey,
                              ),
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'جلسات سابقه',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _PrescriptionPopup(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'كريم محمد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'التخصص :طبيب نفسي و استشاري علاقات',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 8, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 10, left: 8, right: 6),
                                    child: Text(
                                      '4.0',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 6, top: 0, bottom: 19),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xffFFA927),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 16, bottom: 8, left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.grey,
                              ),
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _PrescriptionPopup(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'كريم محمد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'التخصص :طبيب نفسي و استشاري علاقات',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 8, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 10, left: 8, right: 6),
                                    child: Text(
                                      '4.0',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 6, top: 0, bottom: 19),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xffFFA927),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 16, bottom: 8, left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.grey,
                              ),
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _PrescriptionPopup(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'كريم محمد',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'التخصص :طبيب نفسي و استشاري علاقات',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 8, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 10, left: 8, right: 6),
                                    child: Text(
                                      '4.0',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 6, top: 0, bottom: 19),
                                    child: Icon(
                                      Icons.star,
                                      color: Color(0xffFFA927),
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 16, bottom: 8, left: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(5, 5)),
                                color: Colors.grey,
                              ),
                              height: 90,
                              width: 90,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'جلسات تم إلغائها',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                'كريم محمد',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'التخصص :طبيب نفسي و استشاري علاقات',
                                  style: TextStyle(
                                    color: Color(0xff494649),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 7),
                                  child: Text(
                                    '${DateTime.now().hour}:${DateTime.now().minute}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 0, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.access_time,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 6),
                                  child: Text(
                                    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 8, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 10, left: 8, right: 6),
                                  child: Text(
                                    '4.0',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 6, top: 0, bottom: 19),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xffFFA927),
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 16, bottom: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                              color: Colors.grey,
                            ),
                            height: 90,
                            width: 90,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                'كريم محمد',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'التخصص :طبيب نفسي و استشاري علاقات',
                                  style: TextStyle(
                                    color: Color(0xff494649),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 7),
                                  child: Text(
                                    '${DateTime.now().hour}:${DateTime.now().minute}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 0, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.access_time,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 6),
                                  child: Text(
                                    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 8, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 10, left: 8, right: 6),
                                  child: Text(
                                    '4.0',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 6, top: 0, bottom: 19),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xffFFA927),
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 16, bottom: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                              color: Colors.grey,
                            ),
                            height: 90,
                            width: 90,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                'كريم محمد',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'التخصص :طبيب نفسي و استشاري علاقات',
                                  style: TextStyle(
                                    color: Color(0xff494649),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 7),
                                  child: Text(
                                    '${DateTime.now().hour}:${DateTime.now().minute}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 0, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.access_time,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 8, left: 8, right: 6),
                                  child: Text(
                                    '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 8, top: 0, bottom: 10),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: Color(0xffD68FFF),
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, bottom: 10, left: 8, right: 6),
                                  child: Text(
                                    '4.0',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 6, top: 0, bottom: 19),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xffFFA927),
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, right: 16, bottom: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                              color: Colors.grey,
                            ),
                            height: 90,
                            width: 90,
                          ),
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
    );
  }
}
