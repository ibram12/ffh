import 'package:flutter/material.dart';

class ServesConditionPage extends StatelessWidget {
  const ServesConditionPage({super.key});

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
                'شروط الخدمه',
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
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'يتم حجز ثمن الجلسه لدي التطبيق لحين انتهاء الجلسه سوف يتم تحويل المبلغ للمعالج لضمان حقك\n\nفي حاله الغاء الجلسه قبل باكثر من 24 ساعه لا يؤثر سلبا عليك ولا يتم خصم اي مبلغ منك \n\nفي حاله الغاء الجلسه بعد 24 ساعه  سوف يتم انذارك او الخصم منك 20% من قيمه الجلسه لضمان الحفاظ علي  وقت المعالج\n\nفي حاله لم تدخل الجلسه سوف يتم تحذيرك 3 مرات و خضم منك نسبه 20% من ثمن الجلسه\n\n اذا تكرر عدم دخولك للجلسات اكثر من 3 مرات سوف يتم منعك من حجز جلسات لفتره لضمان الحفاظ علي وقت المعالج',
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
