import 'package:flutter/material.dart';

class InputLable extends StatelessWidget {
 final String text;
  const InputLable({super.key,required this.text});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),
      ),
    );
  }
}