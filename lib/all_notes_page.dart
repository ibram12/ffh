import 'package:e3ada_4/my_notes_today_page.dart';
import 'package:flutter/material.dart';

class AllNotesPage extends StatefulWidget {
  const AllNotesPage({super.key});

  @override
  State<AllNotesPage> createState() => _AllNotesPageState();
}

class _AllNotesPageState extends State<AllNotesPage> {
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
              padding: const EdgeInsets.only(
                  left: 16, right: 10, top: 10, bottom: 8),
              child: Text(
                'جميع الملاحظات',
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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return MyNotesTodaypage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFF6E4FF),
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
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
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}\n\n'
                      '.موسبيإ ميرول صن نم خسن ىلع اًضيأ توح يتلاو ركيام جياب سودلأ لثم ينورتكلإلا رشنلا جمارب روهظ عم اَرخؤم ىرخأ ةرم رشتنيل داعو ،صنلا اذه',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Tajawal',
                        decoration: TextDecoration.none,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}