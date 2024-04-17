import 'package:flutter/material.dart';

class TherapistHistoryPage extends StatefulWidget {
  const TherapistHistoryPage({super.key});

  @override
  State<TherapistHistoryPage> createState() => _TherapistHistoryPageState();
}

class _TherapistHistoryPageState extends State<TherapistHistoryPage> {
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
                    MaterialPageRoute(builder: (builder) => TherapistHistoryPage()),
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
                'معاملاتك الماليه',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
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
        child: ListView(children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 16, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : استرجاع',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : حساب بنكي',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 0, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : ايداع',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : حساب بنكي',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 0, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : ايداع',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : حساب بنكي',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 0, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : سحب',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : فودافون',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 0, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : سحب',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : فودافون',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 0, bottom: 0, right: 8),
            child: Container(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 8, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  'المبلغ: 500 ج.م',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'حاله التحويل : سحب',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'طريقه التحويل : فودافون',
                                    style: TextStyle(
                                      color: Color(0xff494649),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 7),
                                    child: Text(
                                      '${DateTime.now().hour}:${DateTime.now().minute}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.access_time,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 2, bottom: 8, left: 8, right: 6),
                                    child: Text(
                                      '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Color(0xffD68FFF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}