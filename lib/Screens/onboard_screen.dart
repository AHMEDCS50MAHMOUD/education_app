import 'package:education_app/Widgets/onboard_auth_buttons.dart';
import 'package:education_app/Widgets/onborad_next_button.dart';
import 'package:flutter/material.dart';


class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'image': 'assets/images/onboard_1.png',
      'title': 'Welcome to careerplace',
      'color': const Color(0xFFDCC6FF),
    },
    {
      'image': 'assets/images/onboard_2.png',
      'title': 'Get support in your new career',
      'color': const Color(0xFFFFD84D),
    },
    {
      'image': 'assets/images/onboard_3.png',
      'title': 'Learn and practice',
      'color': const Color(0xFFB9A7FF),
    },
    {
      'image': 'assets/images/onboard_4.png',
      'title': 'Let’s start your career!',
      'color': const Color(0xFFDCC6FF),
    },
  ];

  void nextPage() {
    if (currentIndex < pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() => currentIndex = index);
        },
        itemBuilder: (context, index) {
          final page = pages[index];
          return Container(
            color: page['color'],
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  page['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Image.asset(page['image'], height: 382, fit: BoxFit.contain),
                SizedBox(height: 20),
                const Spacer(),
                index == pages.length - 1
                    ? OnboardAuthButtons()
                    : OnboardNextButton(text: 'Next', onPressed: nextPage),
                const SizedBox(height: 100),
              ],
            ),
          );
        },
      ),
    );
  }
}
  
