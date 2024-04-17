import 'package:flutter/material.dart';

class DairyAIPage extends StatelessWidget {
  const DairyAIPage({super.key});

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
                'اليوم',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
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
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
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
    );
  }
}
