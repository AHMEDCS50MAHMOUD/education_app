import 'package:education_app/Screens/notifications_screen.dart';
import 'package:education_app/Widgets/nav_bar.dart';
import 'package:education_app/Widgets/noftiIcon_block.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'My profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationsScreen()),
              );
            },
            child:NoftiiconBlock(), 
         
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.limeAccent,
                    width: 4,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/Home.jpg'),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Jane Sodi',
                style: TextStyle(
                  color: Color(0xFFC594FF),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              _buildProfileOption(context, 'Edit profile'),
              _buildProfileOption(context, 'Payment'),
              _buildProfileOption(context, 'Support'),
              _buildProfileOption(context, 'About the app'),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }

  Widget _buildProfileOption(BuildContext context, String title) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
      onTap: () {},
    );
  }
}
