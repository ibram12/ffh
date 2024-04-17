import 'package:e3ada_4/all_therapist_page.dart';
import 'package:e3ada_4/my_session_page.dart';
import 'package:e3ada_4/user_history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySessionsEmptyPage extends StatefulWidget {
  const MySessionsEmptyPage({super.key});

  @override
  State<MySessionsEmptyPage> createState() => _MySessionsEmptyPageState();
}

class _MySessionsEmptyPageState extends State<MySessionsEmptyPage> {
  VoidCallback? onTap;
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
        padding: EdgeInsets.only(top: 120, right: 16, left: 16),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/mySessionEmpty.png',
              height: 250,
              width: 250,
            ),
            Container(
              height: 200,
              width: 220,
              alignment: Alignment.center,
              child: Text(
                '      ليس لديك جلسات بعد \n يمكنك الان حجز اول جلسه لك\n\n\t\t\t\t\t\t\tالجلسه الاولي مجانيه',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return AllTherapistPage();
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
                    'اختار معالجك الان',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      //////////////////////////////////////////////////////////////////////

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => MySessionPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
