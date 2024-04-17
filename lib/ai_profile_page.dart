import 'package:e3ada_4/all_dairies_page.dart';
import 'package:e3ada_4/dairy_ai.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AIProfilePage extends StatefulWidget {
  const AIProfilePage({super.key});
  @override
  State<AIProfilePage> createState() => _AIProfilePageState();
}

class _AIProfilePageState extends State<AIProfilePage> {
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
                'AI ملف ال',
                style: TextStyle(
                  fontSize: 25,
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
        padding: EdgeInsets.only(left: 16, right: 25, top: 16),
        //margin: EdgeInsets.only(left: 310, top: 16),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 6, left: 320),
              child: Text(
                'الاسم',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide(
                        color: Color(0xffAFA9AE),
                      )),
                  hintText: 'tarek',
                  hintTextDirection: TextDirection.rtl,
                  contentPadding: EdgeInsets.only(left: 290, right: 16),
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xffAFA9AE),
                  ),
                  fillColor: Color(0xffAFA9AE),
                  constraints: BoxConstraints(
                    maxHeight: 40,
                    minWidth: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 290),
              child: Text(
                'الشخصيه',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/cha1.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha2.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha3.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha4.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha5.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha6.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha7.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha8.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha9.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha10.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha11.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha12.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha13.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha14.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha15.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha16.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha17.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha18.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha19.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha20.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha21.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha22.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha23.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/cha24.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext) {
                          return AllDairiesPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0XFFD68FFF),
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Text(
                      'جميع اليوميات',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Tajawal',
                        color: Color(0XFFD68FFF),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'اليوميات',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext) {
                        return DairyAIPage();
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
          ],
        ),
      ),
    );
  }
}
