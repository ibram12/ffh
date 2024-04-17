import 'package:flutter/material.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
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
                'جوائز',
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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            margin: EdgeInsets.only(left: 24.0, right: 24),
            padding: EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/rewords.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'خصومات ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff100D10),
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xffF6E4FF), // Background color of the container
              borderRadius: BorderRadius.circular(10.0), // Rounded corners
            ),
            child: Column(
              children: [
                Text(
                  'مرحبا بك! نحن حريصون على صحتك وسلامتك. نقدم لك خصم 50% على أول جلسة مع أي معالج تختاره، ومجانًا يمكنك استخدامها في أي وقت.',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff100D10),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color(0xffD68FFF), // Background color of the button
                    minimumSize: Size(
                        double.infinity, 32), // Set the height of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Rounded corners for the button
                    ),
                  ),
                  child: Text(
                    'احجز الآن',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff100D10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
