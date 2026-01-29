import 'package:education_app/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'GentiumBookPlus'),
      home: SplashScreen(),
    );
  }
}
