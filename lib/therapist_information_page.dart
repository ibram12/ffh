import 'package:e3ada_4/summit_request_page.dart';
import 'package:flutter/material.dart';

class TherapistInformationPage extends StatefulWidget {
  const TherapistInformationPage({super.key});

  @override
  State<TherapistInformationPage> createState() =>
      _TherapistInformationPageState();
}

class _TherapistInformationPageState extends State<TherapistInformationPage> {
  int selectedOption = 1;
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
                  left: 16, right: 150, top: 21, bottom: 8),
              child: Text(
                'معلوماتك',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
          ]
          // ... other app bar configurations
          ),
      body: ListView(
        children: [
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.only(left: 16, right: 25, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'الاسم',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
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
                Text(
                  'تخصصك',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: 'طبيب نفسي استشاري علاقات',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 16, right: 16),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'البطاقه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: '',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      prefixIcon: Icon(
                        Icons.attach_file_sharp,
                        color: Color(0xffAFA9AE),
                        size: 22,
                      ),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'كارنيه النقابه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: '',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      prefixIcon: Icon(
                        Icons.attach_file_sharp,
                        color: Color(0xffAFA9AE),
                        size: 22,
                      ),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'شهادة التخرج',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: '',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      prefixIcon: Icon(
                        Icons.attach_file_sharp,
                        color: Color(0xffAFA9AE),
                        size: 22,
                      ),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'السيره الذاتيه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: '',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      prefixIcon: Icon(
                        Icons.attach_file_sharp,
                        color: Color(0xffAFA9AE),
                        size: 22,
                      ),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'ارفق صوره لك مع البطاقه',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: '',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      prefixIcon: Icon(
                        Icons.attach_file_sharp,
                        color: Color(0xffAFA9AE),
                        size: 22,
                      ),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                Text(
                  'البلد',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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
                      hintText: 'مصر',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.only(left: 300, right: 16),
                      fillColor: Color(0xffAFA9AE),
                      constraints: BoxConstraints(
                        maxHeight: 40,
                        minWidth: 25,
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 8),
                Text(
                  'النوع',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RadioListTile(
                          title: Row(
                            textDirection:
                                TextDirection.rtl, // Align text to the right
                            children: [
                              Text(
                                'ذكر',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                              SizedBox(
                                  width:
                                      4), // Add spacing between icon and text
                            ],
                          ),
                          value: 1,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                          contentPadding:
                              EdgeInsets.zero, // Remove default padding
                          controlAffinity: ListTileControlAffinity
                              .trailing, // Align radio button to the right
                          activeColor: Color(
                              0xffD68FFF), // Change the color for selected state
                        ),
                        RadioListTile(
                          title: Row(
                            textDirection:
                                TextDirection.rtl, // Align text to the right
                            children: [
                              Text(
                                'أنثى',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Tajawal',
                                ),
                              ),
                              SizedBox(
                                  width:
                                      4), // Add spacing between icon and text
                            ],
                          ),
                          value: 2,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                          contentPadding:
                              EdgeInsets.zero, // Remove default padding
                          controlAffinity: ListTileControlAffinity
                              .trailing, // Align radio button to the right
                          activeColor: Color(
                              0xffD68FFF), // Change the color for selected state
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => SummitRequestPage()),
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
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
