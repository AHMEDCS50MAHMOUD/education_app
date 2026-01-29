import 'package:flutter/material.dart';

class NoftiiconBlock extends StatelessWidget {
  const NoftiiconBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications_none_outlined,
                  size: 24,
                  color: Color(0XFF6C6C6C),
                ),
              ),
              Positioned(
                right: 22,
                top: 5,
                child: Container(
                  height: 8,
                  width: 8,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.yellow, // The yellow circle
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          );
  }
}