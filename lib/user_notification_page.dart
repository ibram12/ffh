//

import 'dart:async';
import 'package:flutter/material.dart';

class UserNotificationPage extends StatefulWidget {
  const UserNotificationPage({Key? key}) : super(key: key);

  @override
  State<UserNotificationPage> createState() => _UserNotificationPageState();
}

class _UserNotificationPageState extends State<UserNotificationPage> {
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
                onPressed: () => Navigator.pop(context, ''),
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
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Text(
                'اشعاراتي',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            IconButton(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StreamBuilder<String>(
          stream: _notificationStreamController.stream,
          initialData: 'Notification 1',
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return ListView(
              children: [
                Container(
                  color: Color(0xffF6E4FF),
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'ُتم رفض معاد جلستك مع المعالج (لينا محمد) نظرا لعدم مناسبه المعاد للمعالج يمكنك تعديل المعاد او الغاء الجلسه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 7),
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
                                left: 0, right: 0, top: 8, bottom: 8),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 6),
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
                                left: 0, right: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 120,
                                height: 30,
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
                                      'الغاء',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFD68FFF),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w700,
                                        height: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25.0),
                          Container(
                            width: 120,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                _showChangeAppointmentDialog();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD68FFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                              ),
                              child: Text(
                                'تعديل',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100D10),
                                  fontSize: 13,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                // Other containers remain the same
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xffF6E4FF),
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'ُتم قبول معاد جلستك مع المعالج (لينا محمد) استعد للجلسه وانضم لها في المعاد',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 7),
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
                                left: 0, right: 0, top: 8, bottom: 8),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 6),
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
                                left: 0, right: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xffF6E4FF),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'جلستك الان مع معالجك يمكنك الانضمام الي الجلسه',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 7),
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
                                left: 0, right: 0, top: 8, bottom: 8),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 6),
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
                                left: 0, right: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: 120,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD68FFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                              ),
                              child: Text(
                                'انضم الان',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100D10),
                                  fontSize: 13,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xffF6E4FF),
                  height: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'لقد قام المعالج احمد محمد بارسال لك روشته بها الادويه الخاصه بك',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 7),
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
                                left: 0, right: 0, top: 8, bottom: 8),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 6),
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
                                left: 0, right: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 120,
                                height: 30,
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
                                      'مشاركه',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFD68FFF),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w700,
                                        height: 0.06,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 25.0),
                          Container(
                            width: 120,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD68FFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                              ),
                              child: Text(
                                'تحميل',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100D10),
                                  fontSize: 13,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Color(0xffF6E4FF),
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'لم تحدد ميزاجك اليوم يمكنك تحديد ميزاجك الان',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 7),
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
                                left: 0, right: 0, top: 8, bottom: 8),
                            child: Icon(
                              Icons.access_time,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, bottom: 8, left: 8, right: 6),
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
                                left: 0, right: 8, top: 8, bottom: 8),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Color(0xffD68FFF),
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: 150,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFD68FFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 12),
                              ),
                              child: Text(
                                'حدد ميزاجك الان',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF100D10),
                                  fontSize: 13,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 0.06,
                                ),
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
