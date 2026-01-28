import 'package:flutter/material.dart';

class FilterContiner extends StatelessWidget {
  final String label;
  final bool isSelected;

  const FilterContiner({required this.label, this.isSelected = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color:  Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey.shade800, width: 1.5),
      ),
      child: Text(
        label,
        style: TextStyle(color: (isSelected ? Color(0XFF414141) : Colors.white), fontSize: 14,fontWeight: FontWeight.w600),
      ),
    );
  }
}