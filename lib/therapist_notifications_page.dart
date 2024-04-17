import 'package:e3ada_4/profile_for_therapist_flow_page.dart';
import 'package:e3ada_4/therapist_notifications_empty_page.dart';
import 'package:e3ada_4/therapist_settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'therapist_sessions_empty_page.dart';

class TherapistNotificationsPage extends StatefulWidget {
  const TherapistNotificationsPage({super.key});

  @override
  State<TherapistNotificationsPage> createState() => _TherapistNotificationsPageState();
}

class _TherapistNotificationsPageState extends State<TherapistNotificationsPage> {
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