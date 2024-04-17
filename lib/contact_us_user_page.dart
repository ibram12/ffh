import 'package:e3ada_4/problem_sent_done_user_page.dart';
import 'package:flutter/material.dart';

class ContactUSUserPage extends StatefulWidget {
  const ContactUSUserPage({super.key});

  @override
  State<ContactUSUserPage> createState() => _ContactUSUserPageState();
}

class _ContactUSUserPageState extends State<ContactUSUserPage> {
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
                'تواصل معنا',
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
        padding: EdgeInsets.only(left: 16, right: 25, top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'يمكنك كتابه مشكلتك هنا سوف نقوم بحلها لك في اقرب وقت ',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintTextDirection: TextDirection.rtl,
                hintText: 'الشكوي',
              ),
            ),
            SizedBox(
              height: 520,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return ProblemSentDoneUserPage();
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
                    'ارسال',
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
    );
  }
}
