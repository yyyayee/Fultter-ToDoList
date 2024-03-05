import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/introduction_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:onboarding_screen/firebase_options.dart';

bool show = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(     //รอให้เชื่อมต่อ firebase ให้เรียบร้อยถึงจะทำงานคำสั่งถัดไป
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      // home: IntroScreen(),
      home: show
          ? IntroScreen()
          : HomeScreen(), //ถ้ายังไม่กดปุ่ม done จะไปหน้า Intro แต่ถ้ากดแล้วจะไปหน้า Home และไม่โชว์หน้า Intro อีก ,show คือตัวแปรที่เช็คเงื่อนไข
    );
  }
}
