import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int selectedOption = 1;
  int id = 1;
  String predominant = "";
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
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Text(
                'اللغه',
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
        padding: EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'العربيه',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 1;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الانجليزيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 2;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الفرنسيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 3,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 3;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الاسبانيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 4,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 4;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الايطاليه',
                         style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 5,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 5;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الروسيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 6,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 6;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الصينيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 7,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 7;
                  });
                },
              ),
              // more widgets ...
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'الالمانيه',
                          style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
              ),
              Radio(
                value: 8,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    predominant = 'recessiva_bb';
                    id = 8;
                  });
                },
              ),
              // more widgets ...
            ]),
            SizedBox(
              height: 285,
            ),
            GestureDetector(
              onTap: onTap,
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
                    'تغيير اللغه',
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
          ],
        ),
      ),
    );
  }
}
