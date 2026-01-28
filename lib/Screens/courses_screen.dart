import 'package:education_app/Widgets/filter_continer.dart';
import 'package:education_app/Widgets/home_card.dart';
import 'package:education_app/Widgets/sectionheader.dart';
import 'package:education_app/models/card_model.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Stack(
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
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/Home.jpg'),
                ),
                SizedBox(width: 15),
                Text(
                  'Hello, Jane',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      backgroundColor: Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  FilterContiner(label: "UX/UI", isSelected: true),
                  FilterContiner(label: "Python"),
                  FilterContiner(label: "Marketing"),
                  FilterContiner(label: "Game dev"),
                  FilterContiner(label: "Coding"),
                  FilterContiner(label: "Java"),
                ],
              ),
              const SizedBox(height: 10),

              Sectionheader(title: 'Courses'),

              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[index].title,
                      price: cardList[index].price,
                      rating: cardList[index].rating,
                      hours: cardList[index].hours,
                      people: cardList[index].people,
                      bColor: cardList[index].bgColor,
                      imageAsset: cardList[index].imageAsset,
                      isfavorite: cardList[index].isFavorite,
                    );
                  },
                ),
              ),

              /// Dates
              const SizedBox(height: 10),
              Sectionheader(title: 'Lectures'),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[2-index].title,
                      price: cardList[2-index].price,
                      rating: cardList[2-index].rating,
                      hours: cardList[2-index].hours,
                      people: cardList[2-index].people,
                      bColor: cardList[2-index].bgColor,
                      imageAsset: cardList[2-index].imageAsset,
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),
              Sectionheader(title: 'On Top'),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[index].title,
                      price: cardList[index].price,
                      rating: cardList[index].rating,
                      hours: cardList[index].hours,
                      people: cardList[index].people,
                      bColor: cardList[index].bgColor,
                      imageAsset: cardList[index].imageAsset,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: ,
    );
  }
}
