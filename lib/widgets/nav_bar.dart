import 'package:education_app/Screens/courses_screen.dart';
import 'package:education_app/Screens/job_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFF2C2C2C),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoursesScreen()),
                );
              },
              child: const Icon(Icons.home_outlined, color: Colors.white, size: 28),
            ),
            
            const Icon(Icons.search, color: Colors.grey, size: 28),
            const Icon(Icons.hexagon_outlined, color: Colors.grey, size: 28),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JobScreen()),
                );
              },
              child: const Icon(Icons.cases_outlined, color: Colors.grey, size: 28),
            ),
            const Icon(Icons.person_outline, color: Colors.grey, size: 28),
          ],
        ),
      ),
    );
  }
}
