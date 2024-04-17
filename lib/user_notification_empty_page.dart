import 'package:e3ada_4/user_notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserNotificationEmptyPage extends StatefulWidget {
  const UserNotificationEmptyPage({super.key});

  @override
  State<UserNotificationEmptyPage> createState() =>
      _UserNotificationEmptyPageState();
}

class _UserNotificationEmptyPageState extends State<UserNotificationEmptyPage> {
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
                'اشعاراتي',
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
        padding: EdgeInsets.only(top: 15, right: 16, left: 16),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svg/user_notification_empty.svg',
                height: 480,
                width: 480,
              ),
              Container(
                height: 30,
                width: 220,
                alignment: Alignment.center,
                child: Text(
                  'ليس لديك اشعارات حتي الان',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //////////////////////////////////////////////////////////////////////
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (builder) => UserNotificationPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
