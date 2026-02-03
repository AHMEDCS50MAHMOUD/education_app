import 'package:education_app/Widgets/notification_message.dart';
import 'package:flutter/material.dart';

import '../Widgets/nav_bar.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       actions: const [
         Padding(
           padding: EdgeInsets.only(right: 8.0),
           child: Icon(Icons.delete),
         ),
       ],
       title: const Text('Notifications'
       , style: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.bold
       ),
       ),

       centerTitle: true,
     ),
      body: const Column(
        children: [
          SizedBox(height: 12,),
          NotificationMessage(
            message: 'Hi, Jane! Just a reminder that you have one unfinished lecture, watch it now to complete the progress!',
          ),
          NotificationMessage(
            message: 'You have a new unread message!',
          ),
          NotificationMessage(
            message: 'You received an award from our moderators and entered the top 100 students of our service! Congratulations and we give you 1000 rating points!',
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
