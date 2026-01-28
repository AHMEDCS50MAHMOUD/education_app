import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String price;
  final String rating;
  final String hours;
  final String people;
  final Color bColor;
  final String imageAsset;
  final bool isfavorite;

  const HomeCard({
    required this.title,
    required this.price,
    required this.rating,
    required this.hours,
    required this.people,
    required this.bColor,
    required this.imageAsset,
    this.isfavorite = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 223,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF1A1A1A),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 100,
                        width: 70,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imageAsset),
                        
                              fit: BoxFit
                                  .cover, // Use contain so it doesn't cover your text
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFF1A1A1A),
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    children: [
                      buildcardItem(Icons.star_border, rating),
                      buildcardItem(null, hours),
                      buildcardItem(null, people),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Color(0XFF1A1A1A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: (isfavorite) ? Colors.redAccent : Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildcardItem(IconData? icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0XFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) Icon(icon, size: 12, color: bColor),
          Text(text, style: TextStyle(color: bColor, fontSize: 10)),
        ],
      ),
    );
  }
}
