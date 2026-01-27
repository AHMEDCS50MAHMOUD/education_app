import 'package:flutter/material.dart';
import 'package:education_app/screens/notifications_screen.dart';


class EducationApp extends StatelessWidget {
  const EducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* initialRoute: '/',
       routes: {
        //'/': (context) => Homescreen(),
        '/Result': (context) => ResultScreen(),
       },*/
       home: NotificationsScreen(),
       //ResultScreen()
    );

  }
}