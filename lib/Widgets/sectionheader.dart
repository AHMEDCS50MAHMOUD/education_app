import 'package:flutter/material.dart';

class Sectionheader extends StatelessWidget {
  final String title;
  const Sectionheader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(title, 
            style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)
          ),
          const SizedBox(width: 10),
          Expanded(child: Divider(color: Colors.grey.shade800, thickness: 1)),
        ],
      ),
    );;
  }
}