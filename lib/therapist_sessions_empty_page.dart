import 'dart:async';

import 'package:e3ada_4/profile_for_therapist_flow_page.dart';
import 'package:e3ada_4/therapist_history_page.dart';
import 'package:e3ada_4/therapist_notifications_empty_page.dart';
import 'package:e3ada_4/therapist_sessions_page.dart';
import 'package:e3ada_4/therapist_settings_page.dart';
import 'package:flutter/material.dart';

class TherapistSessionsEmpty extends StatefulWidget {
  const TherapistSessionsEmpty({super.key});

  @override
  State<TherapistSessionsEmpty> createState() => _TherapistSessionsEmptyState();
}

class _TherapistSessionsEmptyState extends State<TherapistSessionsEmpty> {
  
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
                    MaterialPageRoute(builder: (builder) => TherapistHistoryPage()),
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
        padding: EdgeInsets.only(top: 70, right: 16, left: 16),
        child: Container(
          child: Column(
            children: [
              Image.asset(
                'assets/images/DaiariesEmpty.png',
                height: 350,
                width: 350,
              ),
               Container(
                height: 20,
                width: 220,
                alignment: Alignment.center,
                child: Text(
          'ليس لديك جلسات بعد',
                 textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 220,
                alignment: Alignment.center,
                child: Text(
          'يمكنك الاطلاع علي اشعاراتك اذ كان لديك طلب لجلسه',
                 textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
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

      //////////////////////////////////////////////////////////////////////
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => TherapistSessions()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
