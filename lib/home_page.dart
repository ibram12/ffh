
import 'package:e3ada_4/chat_page.dart';
import 'package:e3ada_4/dairies_empty_page.dart';
import 'package:e3ada_4/first_notes_page.dart';
import 'package:e3ada_4/menu_page.dart';
import 'package:e3ada_4/mood_traker_page.dart';
import 'package:e3ada_4/rewards_page.dart';
import 'package:e3ada_4/all_therapist_page.dart';
import 'package:e3ada_4/user_notification_empty_page.dart';
import 'package:e3ada_4/learn_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  
  const HomePage( {super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              return FirstNotesPage();
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF5BDFE),
              Color(0xFFE6BDFE),
              Color(0xFF55D4FF),
            ],
            stops: [
              0.12,
              0.7,
              1,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(
              flex: 1,
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 250),
                        child: GestureDetector(
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
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 250, left: 16),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => UserNotificationEmptyPage()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/svg/notifications.svg',
                            height: 21,
                            width: 21,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 250, right: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => RewardsPage()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/svg/gift.svg',
                            height: 22,
                            width: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 250, left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => MenuPage()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/svg/menu.svg',
                            height: 13,
                            width: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Image.asset(
                'assets/images/characteHomePage.png',               
              ),
            ),
            Spacer(
              flex: 1,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return ChatScreen();
                    },
                  ),
                );
              },
              child: SizedBox(
                height: 45,
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  alignment: Alignment.center,
                  height: 70,
                  width: double.infinity,
                  //color: Color(0xffD68FFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Text(
                          'ابدا المحادثه الان',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
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
    );
  }
}
