import 'package:flutter/material.dart';

class MyNotesTodaypage extends StatefulWidget {
  const MyNotesTodaypage({super.key});

  @override
  State<MyNotesTodaypage> createState() => _MyNotesTodaypageState();
}

class _MyNotesTodaypageState extends State<MyNotesTodaypage> {
  int _selectedColorIndex = 0;

  List<Color> _colors = [
    Color(0XFFC161F9),
    Color(0XFFBCE369),
    Color(0XFFFFE4EE),
    Color(0XFFFFD68F),
    Color(0XFFB9CDFE),
    Color(0XFFFF8FB8),
    Color(0XFFF6E4FF),
    Color(0XFFD68FFF),
  ];

  void _onColorSelected(int index) {
    setState(() {
      _selectedColorIndex = index;
    });
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
          ]),
      body: Container(
        color: _colors[_selectedColorIndex],
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 15),
              child: Text(
                'شعوري',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'اي جلسه حيدخلها تكون برايفت بينه وبين الثيرابست\n\nفي ريبورت حيتم تقديمه من الثيرابست بعد كل سيشن لينا علشان نقدر نساعدك ونحسن صحتك النفسيه وتحديد تقدمك\n\nيمكنك عدم السامح للسستم انو يكون له اكسس علي الملاحظات بتاعتك واذا تم الموافقه سوفه تكون هذه المعلومات سريه سوف تستخدم فقط في مساعدتك في تحسين حالتك النفسبه\n\nفي حاله حدوث اي مشكله يمكنك التواصل معنا وسوف نقوم بحلها لك في اقرب وقت ممكن \n\nيتم حجز قيمه الجلسه لينا لا بتم تحويلها للمعالج الا بعد الانتهاء من الجلسه لضمان حقكك في حاله تغيب المعالج عن الجلسه او رغبه في الغاء الجلسه في اي وقت فنحن هدفنا الاول ان نحافظ علي حقوقك وصحتك النقسيه',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
            bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedColorIndex,
        onTap: _onColorSelected,
        items: _colors
            .map(
              (color) => BottomNavigationBarItem(
                icon: Container(
                  width: 24.0,
                  height: 24.0,
                  color: color,
                ),
                label: '',
              ),

            )
            .toList(),
            
      ),
    );
  }
}
