import 'package:e3ada_4/home_page.dart';
import 'package:e3ada_4/my_information_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AIInformationPage extends StatefulWidget {
  const AIInformationPage({super.key});

  @override
  State<AIInformationPage> createState() => _AIInformationPageState();
}

final List<String> imageUrls = [
  // Add your image URLs here
  'assets/images/cha1.png',
  'assets/images/cha2.png',
  'assets/images/cha3.png',
  'assets/images/cha4.png',
  'assets/images/cha5.png',
  'assets/images/cha6.png',
  'assets/images/cha7.png',
  'assets/images/cha8.png',
  'assets/images/cha9.png',
  'assets/images/cha10.png',
  'assets/images/cha11.png',
  'assets/images/cha12.png',
  'assets/images/cha13.png',
  'assets/images/cha14.png',
  'assets/images/cha15.png',
  'assets/images/cha16.png',
  'assets/images/cha17.png',
  'assets/images/cha18.png',
  'assets/images/cha19.png',
  'assets/images/cha20.png',
  'assets/images/cha21.png',
  'assets/images/cha22.png',
  'assets/images/cha23.png',
  'assets/images/cha24.png',
];

class _AIInformationPageState extends State<AIInformationPage> {
  int selectedImageIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(''),
        ),
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 90, top: 15),
                child: Text(
                  'اختار صديقك',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => MyInformationPage()),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 25, top: 16),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: const Text(
                'اسم صديقك',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 13),
              child: TextField(
                scrollPadding: EdgeInsets.all(8),
                textDirection: TextDirection.rtl,
                style: TextStyle(fontFamily: 'Tajawal', fontSize: 16),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    borderSide: BorderSide(
                      color: Color(0xFFAFA9AE),
                    ),
                  ),
                  hintText: 'Mohammed',
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
              padding: const EdgeInsets.only(left: 280),
              child: const Text(
                'الشخصيه',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 565,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: 24,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImageIndex = index;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedImageIndex == index
                              ? Colors.white
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Transform.scale(
                        scale: selectedImageIndex == index ? 0.8 : 1.0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ), // Replace Placeholder with your SVG image widget
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
                    builder: (BuildContext) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffD68FFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                //color: Color(0xffD68FFF),
                child: const Center(
                  child: Text(
                    'التالي',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 0, 0, 1),
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

class ImageArgs {
  final int index;

  ImageArgs(this.index);
}
