import 'package:e3ada_4/splash_1_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Therapist_Project());
}

class Therapist_Project extends StatefulWidget {
  const Therapist_Project({super.key});

  @override
  State<Therapist_Project> createState() => _Therapist_ProjectState();
}

class _Therapist_ProjectState extends State<Therapist_Project> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Tajawal',
      ),
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: SplashOnePage(),
      ),

    );
  }
}
