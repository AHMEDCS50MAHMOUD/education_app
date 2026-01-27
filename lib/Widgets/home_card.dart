import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String hours;
  final String people;
  final Color bgColor;
  final String imageAsset; // Replace with your image path

  const HomeCard({
    required this.title,
    required this.price,
    required this.rating,
    required this.hours,
    required this.people,
    required this.bgColor,
    required this.imageAsset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 223,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child:Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              ),
               ),
              
              const SizedBox(height: 30),
              Text(
                price,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 8,
                children: [
                  _buildStatItem(Icons.star_border, rating),
                  _buildStatItem(null, hours),
                  _buildStatItem(null, people),
                ],
              )
            ],
          ),
          Positioned(
            right: 0,
            bottom: 40,
            child: Icon(Icons.favorite_border, color: Colors.black.withAlpha(5)), // Mock for the heart icon
          ),
          // Add your Image.asset() here centered or positioned
        ],
      ),
    );
  }

  Widget _buildStatItem(IconData? icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) Icon(icon, size: 12, color: Colors.orange),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 10)),
        ],
      ),
    );
  }
}