import 'dart:async';

import 'package:e3ada_4/booking_done_for_first_session_page.dart';
import 'package:flutter/material.dart';

class TherapistInformationForUserPage extends StatefulWidget {
  TherapistInformationForUserPage({Key? key}) : super(key: key);

  @override
  State<TherapistInformationForUserPage> createState() =>
      _TherapistInformationForUserPageState();
}

class _TherapistInformationForUserPageState
    extends State<TherapistInformationForUserPage> {
  String selectedDay = "";
  String selectedTime = "";

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
            radius: 90,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 88,
              backgroundImage: AssetImage(''),
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
                  if (selectedDay.isNotEmpty || selectedTime.isNotEmpty)
                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w500,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: daysOfWeek.map((day) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedDay = day;
                                        selectedTime = '';
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: selectedDay == day
                                          ? MaterialStateProperty.all(
                                              Color(0XFFD68FFF))
                                          : null,
                                    ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: time.map((day) {
                                  return ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedTime = day;
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: selectedTime == day
                                          ? MaterialStateProperty.all(
                                              Color(0XFFD68FFF))
                                          : null,
                                    ),
                                    child: Text(day),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BookingDoneForFirstSessionPage()),
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
                                child: Center(
                                  child: Text(
                                    'احجز الان',
                                    style: TextStyle(
                                      fontFamily: "Tajawal",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20,
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
                                  offset:
                                      Offset(0, 5), // changes position of shadow
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
    );
  }
}

List<String> daysOfWeek = [
  'الأحد',
  'الاثنين',
  'الثلاثاء',
  'الأربعاء',
  'الخميس',
  'الجمعة',
  'السبت'
];
List<String> time = ['١٠:٠٠ ص', '١٢:٠٠ م', '٢:٠٠ م', '٤:٠٠ م', '٦:٠٠ م'];
