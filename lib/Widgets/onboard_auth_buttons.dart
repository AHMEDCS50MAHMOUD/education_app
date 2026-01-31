import 'package:flutter/material.dart';
import '../Screens/login_screen.dart';
import '../Screens/register_screen.dart';

class OnboardAuthButtons extends StatelessWidget {
  const OnboardAuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 255,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffF5F378),
              //foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF1A1A1A),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),

        SizedBox(
          width: 255,
          height: 50,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RegisterScreen()),
              );
            },
            style: OutlinedButton.styleFrom(
              //foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFF1A1A1A),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
