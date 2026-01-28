import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String description;
  final String tag1;
  final String tag2;
  final Color containerColor;
  final Color tag1Color;
  final Color tag2Color;
  final String imagePath;

  const JobContainer({
    super.key,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
    required this.tag1,
    required this.tag2,
    required this.containerColor,
    required this.tag1Color,
    required this.tag2Color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imagePath),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                  Text(company, style: const TextStyle(color: Colors.black54)),
                ],
              ),
              const Spacer(),
              Text(location, style: const TextStyle(color: Colors.black54)),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(color: Colors.black87),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _buildTag(tag1, tag1Color),
              const SizedBox(width: 8),
              _buildTag(tag2, tag2Color),
              const Spacer(),
              _buildIconButton(Icons.favorite_border, false),
              const SizedBox(width: 8),
              _buildIconButton(Icons.arrow_downward, true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(text, style: const TextStyle(color: Colors.black)),
    );
  }

  Widget _buildIconButton(IconData icon, bool isPrimary) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: isPrimary ? Colors.black : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Icon(
        icon,
        color: isPrimary ? Colors.white : Colors.black,
        size: 20,
      ),
    );
  }
}
