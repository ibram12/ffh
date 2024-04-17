import 'dart:async';

import 'package:e3ada_4/edit_appoinments_page.dart';

import 'package:e3ada_4/therapist_notifications_empty_page.dart';
import 'package:e3ada_4/therapist_sessions_empty_page.dart';
import 'package:e3ada_4/therapist_settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileForTherapistFlowPage extends StatefulWidget {
  const ProfileForTherapistFlowPage({super.key});

  @override
  State<ProfileForTherapistFlowPage> createState() =>
      _ProfileForTherapistFlowPageState();
}

class _ProfileForTherapistFlowPageState
    extends State<ProfileForTherapistFlowPage> {
  int _selectedIndex = 0;
  int index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return TherapistSettingsPage();
            },
          ),
        );
        break;
     
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return TherapistNotificationsEmptyPage();
            },
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return TherapistSessionsEmpty();
            },
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return ProfileForTherapistFlowPage();
            },
          ),
        );
        break;
    }
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

  bool showAppointments = false;
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
                'لينا محمد',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
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
      body: ListView(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 30),
          child: const CircleAvatar(
            radius: 95,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 93,
              backgroundImage: AssetImage(''),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 180, right: 180),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                color: Color(0XFFD68FFF),
              ),
              height: 50,
              width: 10,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'استشارية علاقات',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal',
                      color: Color(0xff494649),
                    ),
                  ),
                  Text(
                    ' : التخصص',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFA927),
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFA927),
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFA927),
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFA927),
                    size: 20,
                  ),
                  Text(
                    ' : التقييم',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'مصر',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal',
                      color: Color(0xff494649),
                    ),
                  ),
                  Text(
                    ' : البلد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '200',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal',
                      color: Color(0xff494649),
                    ),
                  ),
                  Text(
                    ' : عدد الجلسات',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '200 ج.م',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Tajawal',
                      color: Color(0xff494649),
                    ),
                  ),
                  Text(
                    ' : سعر الجلسه',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  showAppointments = false;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0XFFD68FFF),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Text(
                  'التعليقات',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                    color: showAppointments ? Colors.grey : Color(0XFFD68FFF),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showAppointments = true;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: showAppointments
                          ? Color(0XFFD68FFF)
                          : Colors.transparent,
                      width: 0.5,
                    ),
                  ),
                ),
                child: Text(
                  'المواعيد المتاحه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                    color: showAppointments ? Color(0XFFD68FFF) : Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        if (showAppointments)
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: ListView(
                shrinkWrap: true, // قم بإضافة هذا السطر
                children: <Widget>[
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
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext) {
                              return EditAppoinmentsPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: Row(
                          children: [
                            Text(
                              'اضف وتعديل الميعاد',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Tajawal',
                                color: Color(0XFFD68FFF),
                                decoration: TextDecoration.none,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8, left: 5),
                              child: Icon(
                                Icons.date_range_outlined,
                                color: Color(0XFFD68FFF),
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        else
          Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
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
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Text(
                                            '            شعرت بالراحه اثناء الجلسه استطعت\n فيها التعبير عما يدور في زهني استفدت كثيرا',
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
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0,
                                                right: 6,
                                                top: 0,
                                                bottom: 19),
                                            child: Icon(
                                              Icons.star,
                                              color: Color(0xffFFA927),
                                              size: 20,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                bottom: 10,
                                                left: 8,
                                                right: 6),
                                            child: Text(
                                              'تقييم الجلسه',
                                              textDirection: TextDirection.rtl,
                                              style: TextStyle(
                                                color: Color(0xff494649),
                                                fontSize: 12.0,
                                                fontFamily: 'Tajawal',
                                                fontWeight: FontWeight.bold,
                                              ),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(50, 50)),
                                        color: Colors.grey,
                                      ),
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1D1B1E),
        selectedItemColor: Color(0xFFD68FFF),
        unselectedItemColor: Color(0xFFE8E0E5),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color:_selectedIndex == 3 ? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
              size: 27,
            ),
            label: 'الاعدادات',
            backgroundColor: _selectedIndex == 3? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              color:_selectedIndex == 2 ? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
              size: 27,
            ),
            label: 'اشعارات',
            backgroundColor: _selectedIndex == 2? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
          ),
          BottomNavigationBarItem(
             icon: Icon(
              Icons.date_range_outlined,
              color:_selectedIndex == 1? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
              size: 23,
              
              ),  
            label: 'الجلسات',
            backgroundColor: _selectedIndex == 1? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
          ),
          
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color:_selectedIndex == 0 ? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
              size: 27,
              
              ),                 
            
            label: 'الملف الشخصي',
            backgroundColor: _selectedIndex == 0? Color(0xffD68FFF) : Color(0xffE8E0E5) ,
          ),
        ],
      ),
    );
  }
}
