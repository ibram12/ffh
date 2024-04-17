import 'package:e3ada_4/dairies_empty_page.dart';
import 'package:e3ada_4/home_page.dart';
import 'package:e3ada_4/menu_page.dart';
import 'package:e3ada_4/mood_traker_page.dart';
import 'package:e3ada_4/notes_page.dart';
import 'package:e3ada_4/rewards_page.dart';
import 'package:e3ada_4/all_therapist_page.dart';
import 'package:e3ada_4/user_notification_empty_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'learn_page.dart';

class FirstNotesPage extends StatefulWidget {
  const FirstNotesPage({super.key});

  @override
  State<FirstNotesPage> createState() => _FirstNotesPageState();
}

class _FirstNotesPageState extends State<FirstNotesPage> {
  int _selectedIndex = 0;
  int index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return HomePage();
            },
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return MyNotePage();
            },
          ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return DairiesEmptyPage();
            },
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return LearnPage();
            },
          ),
        );
        break;
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext) {
              return AllTherapistPage();
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => MoodTrakerPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/moodTracker.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) =>
                                    UserNotificationEmptyPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/notificationGrey.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => RewardsPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/giftGrey.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (builder) => MenuPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/menuGrey.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20, top: 40, bottom: 20),
              child: Text(
                'عزيزي يمكنك كتابه كل ما تريده هنا اجعلها مساحه لتفريغ كل ما تريد',
               style:  TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Image.asset(
                'assets/images/DaiariesEmpty.png',
                height: 320,
                width: 320,
              ),
            ),
            Text(
              'ليس لديك ملاحظات حتي الان يمكنك اضافه ملاحظاتك الان',
              style: TextStyle(
                color: Color(0xFF0B0F0F),
                fontSize: 13,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
              textDirection: TextDirection.rtl,
            ),
          ],
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
            icon: SvgPicture.asset(
              'assets/svg/therapist.svg',
              width: 24.0,
              height: 24.0,
              color:
                  _selectedIndex == 4 ? Color(0xffD68FFF) : Color(0xffE8E0E5),
            ),
            label: 'المعالج',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/learn.svg',
              width: 24.0,
              height: 24.0,
              color:
                  _selectedIndex == 1 ? Color(0xffD68FFF) : Color(0xffE8E0E5),
            ),
            label: 'تعلم',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/yourmessage.svg',
              width: 24.0,
              height: 24.0,
              color:
                  _selectedIndex == 2 ? Color(0xffD68FFF) : Color(0xffE8E0E5),
            ),
            label: 'رساله لك',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/mynotes.svg',
              width: 24.0,
              height: 24.0,
              color:
                  _selectedIndex == 3 ? Color(0xffD68FFF) : Color(0xffE8E0E5),
            ),
            label: 'ملاحظاتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/home.svg',
              width: 24.0,
              height: 24.0,
              color:
                  _selectedIndex == 0 ? Color(0xffD68FFF) : Color(0xffE8E0E5),
            ),
            label: 'الرئيسيه',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => MyNotePage()),
          );
        },
        tooltip: 'Increment',
        backgroundColor: Colors.black,
        foregroundColor: Colors.white, 
        child: const Icon(Icons.add),
      ),
    );
  }
}
