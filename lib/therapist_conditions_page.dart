import 'package:e3ada_4/therapist_information_page.dart';
import 'package:flutter/material.dart';

class TherapistConditionsPage extends StatefulWidget {
  const TherapistConditionsPage({super.key});

  @override
  State<TherapistConditionsPage> createState() =>
      _TherapistConditionsPageState();
}

class _TherapistConditionsPageState extends State<TherapistConditionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(''),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            Padding(padding: EdgeInsets.all(16)),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 120, top: 21, bottom: 8),
              child: Text(
                'الشروط و الاحكام',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ]
          // ... other app bar configurations
          ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'رجاءا قراءه الشروط والاحكام جيدا',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '1- البيانات الشخصية :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'يجب عليك ملئ البيانات القادمه بعنايه جدا لزياده نسبه قبولك كمعالج في تطبيقنا',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '2- نسبة العمولة :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'يأخذ تطبيق "الدكتور" نسبة 20% من قيمة كل جلسة يجريها المستخدم من خلال التطبيق. وبذلك تحصل على 80% من قيمة الجلسة.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '3- الجلسات المجانية :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'اول جلسة مع كل مستخدم جديد تكون مجانية. وفي مقابل ذلك، لن يأخذ التطبيق منك نسبة العمولة البالغة 20% عن هذه الجلسة.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '4- حجز ثمن الجلسة :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'يتم حجز ثمن الجلسة في حساب التطبيق حتى انتهاء الجلسة. وبعد انتهاء الجلسة، يتم تحويل المبلغ إلى محفظتك الشخصية، والتي يمكنك سحب المبلغ منها في أي وقت.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '5- إلغاء الجلسة :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'في حال إلغاء الجلسة بعد 24 ساعة من تحديد موعدها، فسوف يتم إنذارك أو خصم مبلغ من محفظتك.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '6- عدم دخول الجلسة :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'في حال عدم دخولك إلى الجلسة في الموعد المحدد، فسوف يتم تحذيرك. وإذا تكرر ذلك، فسوف يتم حذفك من التطبيق. وذلك لضمان سلامة عملائنا وسمعتنا\n في حال عدم دخول المستخدم إلى الجلسة، وفي حال أن الجلسة غير مجانية، فسوف يتم خصم نسبة 20% من ثمن الجلسة من المستخدم، وسوف يتم تحويل المبلغ المتبقي إلى محفظتك الشخصية بنسبة 80%. دي في رقم 6',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '7-لالتزام بأخلاقيات المهنة الطبية :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'يلتزم جميع المستخدمين بأخلاقيات المهنة الطبية، بما في ذلك:\n الحفاظ على سرية معلومات المريض.\nعدم تقديم معلومات طبية غير صحيحة أو مضللة. \nعدم استغلال المريض أو ابتزازه.\n',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '8-عدم الكشف عن أسرار المريض :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'يلتزم جميع المستخدمين بعدم الكشف عن أسرار المريض، بما في ذلك:\n المعلومات الشخصية للمريض. \nالمعلومات الطبية للمريض.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '9-عدم استخدام التطبيق لأغراض غير قانونية :',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'لا يجوز استخدام تطبيق "الدكتور" لأغراض غير قانونية، مثل:\n تقديم خدمات طبية غير مصرح بها. \nنشر معلومات طبية مضللة أو غير صحيحة. \nاستغلال المريض أو ابتزازه.\n',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                width: 382,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => TherapistInformationPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFD68FFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                  ),
                  child: Text(
                    'اوافق',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF100D10),
                      fontSize: 20,
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (builder) => RolePage()),
                // );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 382,
                  height: 42,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD68FFF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'لااوافق ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFD68FFF),
                          fontSize: 20,
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w700,
                          height: 0.06,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
